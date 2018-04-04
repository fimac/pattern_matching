
  VARIABLES

  iex(1)> cab_sav = "5 stars"
  "5 stars"
  iex(2)> merlot = "4 stars"
  "4 stars"
  iex(3)> cab_sav = "3 stars"
  "3 stars"
  iex(4)> cab_sav
  "3 stars"
  iex(5)> ^merlot = "4 stars"
  "4 stars"
  iex(6)> ^merlot = "5 stars"
  ** (MatchError) no match of right hand side value: "5 stars"

  iex(6)> merlot = "5 stars"
  "5 stars"

  TUPLES

  iex(1)> {:ok, response} = {:ok, "awesome"}
  {:ok, "awesome"}
  iex(2)> response
  "awesome"

  PATTERN MATCHING ON PART OF A STRUCTURE TO ASSIGN A VARIABLE

  best_wine = %{winery: "house of cards", type: "malbec"}

  [suggestion, ^best_wine] = ["windows", %{winery: "house of cards", type: "malbec"}]

  iex(1)> best_wine = %{winery: "house of cards", type: "malbec"}
  %{type: "malbec", winery: "house of cards"}
  iex(2)> [suggestion, ^best_wine] = ["windows", %{winery: "house of cards", type: "malbec"}]
  ["windows", %{type: "malbec", winery: "house of cards"}]
  iex(3)> suggestion
  "windows"
  iex(4)> [suggestion, ^best_wine] = ["windows", %{winery: "house of cards", type: "cab sav"}]
  ** (MatchError) no match of right hand side value: ["windows", %{type: "cab sav", winery: "house of cards"}]


  LISTS

  iex(1) > [head | tail] = [1, 2, 3, 4]
  [1, 2, 3, 4]
  iex(2) > head
  1
  iex(3) > tail
  [2, 3, 4]

  prepending an item to a list

  iex(4) > wines = ["cab sav", "merlot", "malbec"]
  ["cab sav", "merlot", "malbec"]

  iex(5) > new_wine_list = ["pinot noir" | wines]
  ["pinot noir", "cab sav", "merlot", "malbec"]

  iex(6) > new_wine_list
  ["pinot noir", "cab sav", "merlot", "malbec"]

  



