// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import "../css/app.scss"

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import deps with the dep name or local files with a relative path, for example:
//
//     import {Socket} from "phoenix"
//     import socket from "./socket"
//
import "phoenix_html"
import {Socket} from "phoenix"
import topbar from "topbar"
import {LiveSocket} from "phoenix_live_view"

let Hooks = {}
Hooks.ExpensesTable = {
    mounted(){
        this.handleEvent("chart_data", function(chart_data){
        window.by_month_chart.data.datasets[0].data = chart_data.by_month_data;
        window.by_month_chart.data.labels = chart_data.by_month_labels;
        window.by_month_chart.update();

        window.this_month_chart.data.datasets[0].data = chart_data.this_month_data;
        window.this_month_chart.data.labels = chart_data.this_month_labels;
        window.this_month_chart.update();
        });
    },
    updated() {
    }
};
let csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content")
let liveSocket = new LiveSocket("/live", Socket, {params: {_csrf_token: csrfToken}, hooks: Hooks})

// Show progress bar on live navigation and form submits
topbar.config({barColors: {0: "#29d"}, shadowColor: "rgba(0, 0, 0, .3)"})
window.addEventListener("phx:page-loading-start", info => topbar.show())
window.addEventListener("phx:page-loading-stop", info => topbar.hide())

// connect if there are any LiveViews on the page
liveSocket.connect()

// expose liveSocket on window for web console debug logs and latency simulation:
// >> liveSocket.enableDebug()
// >> liveSocket.enableLatencySim(1000)  // enabled for duration of browser session
// >> liveSocket.disableLatencySim()
window.liveSocket = liveSocket


document.addEventListener("DOMContentLoaded", function() {
    var ctx1 = document.getElementById('by_month').getContext('2d');
    var ctx2 = document.getElementById('by_day').getContext('2d');
    var by_month_chart = new Chart(ctx1, 
        {type: 'bar', 
            data: 
            {labels: [],
                datasets: [
                    {label: "Expenses",
                        data: [],
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ]}]}});
    window.by_month_chart = by_month_chart;

    var this_month_chart = new Chart(ctx2, 
        {type: 'pie', 
            data: 
            {labels: [],
                datasets: [
                    {label: "Expenses",
                        data: [],
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ]}]},
            options: {plugins: {legend: {position: "right"}}}
        });
    window.this_month_chart = this_month_chart;
});
