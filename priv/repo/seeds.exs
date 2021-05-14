# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PfLive.Repo.insert!(%PfLive.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
seed =
  [
    %{date: Date.from_iso8601!("2021-01-10"), description: "Methow Conservancy", amount: 250.00},
    %{
      date: Date.from_iso8601!("2021-01-11"),
      description: "Zeitgeist Coffee, Seattle, WA",
      amount: 10.1
    },
    %{
      date: Date.from_iso8601!("2021-01-12"),
      description: "Shell Oil, Auto Fuel Dispenser",
      amount: 38.69
    },
    %{
      date: Date.from_iso8601!("2021-01-13"),
      description: "Winthrop Mountain Sports Winthrop, WA",
      amount: 39.32
    },
    %{
      date: Date.from_iso8601!("2021-01-14"),
      description: "Toyota of Seattle, Seattle, WA",
      amount: 251.38
    },
    %{date: Date.from_iso8601!("2021-01-15"), description: "Amazon.com", amount: 25.81},
    %{
      date: Date.from_iso8601!("2021-01-16"),
      description: "Chase Bank Mortgage",
      amount: 1903.00
    },
    %{date: Date.from_iso8601!("2021-01-17"), description: "Audible", amount: 9.12},
    %{
      date: Date.from_iso8601!("2021-01-18"),
      description: "Storyville Coffee, Seattle, WA",
      amount: 8.93
    },
    %{
      date: Date.from_iso8601!("2021-01-19"),
      description: "Hank's Harvest Foodstwisp WA",
      amount: 46.46
    },
    %{
      date: Date.from_iso8601!("2021-01-20"),
      description: "Ikea Seattle, Renton, WA",
      amount: 246.54
    },
    %{date: Date.from_iso8601!("2021-01-21"), description: "Itunes.com", amount: 1.59},
    %{
      date: Date.from_iso8601!("2021-01-22"),
      description: "Mazama Store, Mazama",
      amount: 15.53
    },
    %{
      date: Date.from_iso8601!("2021-01-23"),
      description: "New York Times Digital",
      amount: 18.08
    },
    %{date: Date.from_iso8601!("2021-01-24"), description: "Roadpost Usa", amount: 35.85},
    %{date: Date.from_iso8601!("2021-01-25"), description: "Chevron Service Stn", amount: 27.69},
    %{date: Date.from_iso8601!("2021-01-26"), description: "Texaco Service Stn", amount: 25.28},
    %{
      date: Date.from_iso8601!("2021-01-27"),
      description: "Costco Gas, Burlington",
      amount: 19.16
    },
    %{date: Date.from_iso8601!("2021-01-28"), description: "Dropbox", amount: 6.19},
    %{
      date: Date.from_iso8601!("2021-01-29"),
      description: "Zoka Coffee Roa, Seattle, WA",
      amount: 2.1
    },
    %{
      date: Date.from_iso8601!("2021-01-30"),
      description: "Okanogan County Energy, Winthrop, WA",
      amount: 164.35
    },
    %{date: Date.from_iso8601!("2021-01-31"), description: "Alaska Air", amount: 156.1},
    %{date: Date.from_iso8601!("2021-02-01"), description: "Seattle YMCA", amount: 400.0},
    %{
      date: Date.from_iso8601!("2021-02-02"),
      description: "Trader Joe's #130, Seattle",
      amount: 69.1
    },
    %{date: Date.from_iso8601!("2021-02-03"), description: "Roadpost Usa", amount: 56.98},
    %{date: Date.from_iso8601!("2021-02-04"), description: "Chevron Service Stn", amount: 37.62},
    %{date: Date.from_iso8601!("2021-02-05"), description: "Tiller (tillerhq.com)", amount: 10.0},
    %{
      date: Date.from_iso8601!("2021-02-06"),
      description: "Shell Oil, Auto Fuel Dispenser",
      amount: 47.83
    },
    %{
      date: Date.from_iso8601!("2021-02-07"),
      description: "Winthrop Mountain Sports Winthrop, WA",
      amount: 55.82
    },
    %{
      date: Date.from_iso8601!("2021-02-08"),
      description: "Alaska Wilderness League",
      amount: 400.0
    },
    %{date: Date.from_iso8601!("2021-02-09"), description: "Big Star Montessori", amount: 740.0},
    %{date: Date.from_iso8601!("2021-02-10"), description: "Itunes.com", amount: 2.99},
    %{
      date: Date.from_iso8601!("2021-02-11"),
      description: "Mazama Store, Mazama",
      amount: 18.18
    },
    %{
      date: Date.from_iso8601!("2021-02-12"),
      description: "Toyota of Seattle, Seattle, WA",
      amount: 435.11
    },
    %{date: Date.from_iso8601!("2021-02-13"), description: "Amazon.com", amount: 30.0},
    %{
      date: Date.from_iso8601!("2021-02-14"),
      description: "PCC Natural Market - Issaquah WA",
      amount: 23.0
    },
    %{
      date: Date.from_iso8601!("2021-02-15"),
      description: "Espresso Vivace Seattle, Seattle, WA",
      amount: 7.25
    },
    %{
      date: Date.from_iso8601!("2021-02-16"),
      description: "The Essential Baking Co, Seattle, WA",
      amount: 16.35
    },
    %{date: Date.from_iso8601!("2021-02-17"), description: "AT&T", amount: 125.43},
    %{
      date: Date.from_iso8601!("2021-02-18"),
      description: "Zeitgeist Coffee, Seattle, WA",
      amount: 12.51
    },
    %{date: Date.from_iso8601!("2021-02-19"), description: "Centurylink", amount: 43.73},
    %{
      date: Date.from_iso8601!("2021-02-20"),
      description: "Portage Bay Cafe and Cate, Seattle, WA",
      amount: 72.28
    },
    %{
      date: Date.from_iso8601!("2021-02-21"),
      description: "Whole Foods - Seattle WA",
      amount: 108.91
    },
    %{
      date: Date.from_iso8601!("2021-02-22"),
      description: "Chase Bank Mortgage",
      amount: 1903.00
    },
    %{date: Date.from_iso8601!("2021-02-23"), description: "Audible", amount: 16.18},
    %{
      date: Date.from_iso8601!("2021-02-24"),
      description: "REI, Store 11, Seattle",
      amount: 513.97
    },
    %{date: Date.from_iso8601!("2021-02-25"), description: "Union Garage", amount: 50.0},
    %{
      date: Date.from_iso8601!("2021-02-26"),
      description: "Evergreen Iga Market",
      amount: 36.76
    },
    %{
      date: Date.from_iso8601!("2021-02-27"),
      description: "Glover Street Market",
      amount: 35.34
    },
    %{
      date: Date.from_iso8601!("2021-02-28"),
      description: "Costco Gas, Burlington",
      amount: 19.67
    },
    %{date: Date.from_iso8601!("2021-03-01"), description: "Texaco Service Stn", amount: 48.74},
    %{
      date: Date.from_iso8601!("2021-03-02"),
      description: "New York Times Digital",
      amount: 20.0
    },
    %{date: Date.from_iso8601!("2021-03-03"), description: "Dropbox", amount: 10.81},
    %{
      date: Date.from_iso8601!("2021-03-04"),
      description: "Hank's Harvest Foodstwisp WA",
      amount: 52.69
    },
    %{
      date: Date.from_iso8601!("2021-03-05"),
      description: "Storyville Coffee, Seattle, WA",
      amount: 12.91
    },
    %{date: Date.from_iso8601!("2021-03-06"), description: "Home Depot", amount: 251.33},
    %{
      date: Date.from_iso8601!("2021-03-07"),
      description: "Zoka Coffee Roa, Seattle, WA",
      amount: 3.56
    },
    %{
      date: Date.from_iso8601!("2021-03-08"),
      description: "Okanogan County Energy, Winthrop, WA",
      amount: 322.84
    },
    %{date: Date.from_iso8601!("2021-03-09"), description: "Alaska Air", amount: 115.75},
    %{date: Date.from_iso8601!("2021-03-10"), description: "Evergreen Iga Market", amount: 28.6},
    %{
      date: Date.from_iso8601!("2021-03-11"),
      description: "Glover Street Market",
      amount: 27.97
    },
    %{
      date: Date.from_iso8601!("2021-03-12"),
      description: "Big Star Montessori",
      amount: 621.17
    },
    %{date: Date.from_iso8601!("2021-03-13"), description: "United Way", amount: 300.0},
    %{
      date: Date.from_iso8601!("2021-03-14"),
      description: "Tiller (tillerhq.com)",
      amount: 6.87
    },
    %{
      date: Date.from_iso8601!("2021-03-15"),
      description: "PCC Natural Market - Issaquah WA",
      amount: 14.63
    },
    %{
      date: Date.from_iso8601!("2021-03-16"),
      description: "Espresso Vivace Seattle, Seattle, WA",
      amount: 6.18
    },
    %{
      date: Date.from_iso8601!("2021-03-17"),
      description: "The Essential Baking Co, Seattle, WA",
      amount: 15.96
    },
    %{
      date: Date.from_iso8601!("2021-03-18"),
      description: "Shell Oil, Auto Fuel Dispenser",
      amount: 25.17
    },
    %{
      date: Date.from_iso8601!("2021-03-19"),
      description: "Winthrop Mountain Sports Winthrop, WA",
      amount: 50.35
    },
    %{
      date: Date.from_iso8601!("2021-03-20"),
      description: "REI, Store 11, Seattle",
      amount: 488.96
    },
    %{
      date: Date.from_iso8601!("2021-03-21"),
      description: "Toyota of Seattle, Seattle, WA",
      amount: 260.37
    },
    %{date: Date.from_iso8601!("2021-03-22"), description: "Amazon.com", amount: 16.49},
    %{
      date: Date.from_iso8601!("2021-03-23"),
      description: "Hank's Harvest Foodstwisp WA",
      amount: 27.18
    },
    %{date: Date.from_iso8601!("2021-03-24"), description: "Khan Academy", amount: 300.0},
    %{date: Date.from_iso8601!("2021-03-25"), description: "Roadpost Usa", amount: 34.22},
    %{date: Date.from_iso8601!("2021-03-26"), description: "Chevron Service Stn", amount: 25.75},
    %{date: Date.from_iso8601!("2021-03-27"), description: "Texaco Service Stn", amount: 44.81},
    %{date: Date.from_iso8601!("2021-03-28"), description: "AT&T", amount: 102.85},
    %{
      date: Date.from_iso8601!("2021-03-29"),
      description: "Costco Gas, Burlington",
      amount: 13.77
    },
    %{
      date: Date.from_iso8601!("2021-03-30"),
      description: "Zeitgeist Coffee, Seattle, WA",
      amount: 10.26
    },
    %{date: Date.from_iso8601!("2021-03-31"), description: "Dropbox", amount: 9.71},
    %{
      date: Date.from_iso8601!("2021-04-01"),
      description: "Storyville Coffee, Seattle, WA",
      amount: 11.73
    },
    %{
      date: Date.from_iso8601!("2021-04-02"),
      description: "Chase Bank Mortgage",
      amount: 1903.00
    },
    %{date: Date.from_iso8601!("2021-04-03"), description: "Audible", amount: 15.12},
    %{
      date: Date.from_iso8601!("2021-04-04"),
      description: "North Valley Lumber",
      amount: 249.68
    },
    %{date: Date.from_iso8601!("2021-04-05"), description: "Itunes.com", amount: 2.08},
    %{
      date: Date.from_iso8601!("2021-04-06"),
      description: "Mazama Store, Mazama",
      amount: 16.07
    },
    %{
      date: Date.from_iso8601!("2021-04-07"),
      description: "Trader Joe's #130, Seattle",
      amount: 68.52
    },
    %{
      date: Date.from_iso8601!("2021-04-08"),
      description: "New York Times Digital",
      amount: 18.12
    },
    %{date: Date.from_iso8601!("2021-04-09"), description: "Centurylink", amount: 24.42},
    %{
      date: Date.from_iso8601!("2021-04-10"),
      description: "Whole Foods - Seattle WA",
      amount: 107.76
    },
    %{
      date: Date.from_iso8601!("2021-04-11"),
      description: "Portage Bay Cafe and Cate, Seattle, WA",
      amount: 60.21
    },
    %{date: Date.from_iso8601!("2021-04-12"), description: "Union Garage", amount: 25.41},
    %{
      date: Date.from_iso8601!("2021-04-13"),
      description: "Zoka Coffee Roa, Seattle, WA",
      amount: 2.52
    },
    %{
      date: Date.from_iso8601!("2021-04-14"),
      description: "Okanogan County Energy, Winthrop, WA",
      amount: 205.44
    }
  ]
  |> Enum.map(fn entry ->
    Map.put(entry, :inserted_at, NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second))
    |> Map.put(:updated_at, NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second))
  end)

PfLive.Repo.insert_all(PfLive.Finances.Entry, seed)
