defmodule WineCountry do
  # as a case statement
  def check_list(list) do
    case list do
      [_ | _] -> "there are items in the list"
      [] -> "the list is empty"
      _ -> nil
    end
  end

  # function clauses

  def maybe_non_empty_list([_ | _]), do: "you have wines in the cellar"
  def maybe_non_empty_list([]), do: "no wines in the cellar"
  def maybe_non_empty_list(_), do: nil

  # recursion
  # ["cape natureliste", "house of cards", "snake and herring"]

  def wineries_to_visit([]), do: "you have visited all wineries"

  def wineries_to_visit([visited | need_to_visit]) do
    IO.puts("you had a tasting at #{visited}")
    wineries_to_visit(need_to_visit)
  end

  # %{food: "oysters", mood: "happy", weather: "sunny"}
  # %{food: "lobster", mood: "happy", weather: "sunny"}
  # %{mood: "happy", weather: "sunny"}

  # multi clause function matching on maps
  def help_me_choose(%{food: "oysters"}), do: "reisling goes well with that"
  def help_me_choose(%{food: "lobster"}), do: "have a chardonnay"
  def help_me_choose(_), do: "have a beer"

  # error(handling)

  def handle_response({:ok, response}), do: response
  def handle_response({:error, _}), do: "error message"

  # routing
  def send_me("/winecountry"), do: "going to wine country"

  # guard clauses

  def check_if_nil(field) when field in [nil, true], do: "the field has nil value"

  def check_if_nil(field), do: "do #{field}"

  # nested maps (json responses)
  # %{hits: %{hits: %{food: "oysters"}}} <- json example

  def json_example(response) do
    %{
      hits: %{
        hits: %{
          food: favourite_food
        }
      }
    } = response

    {:ok, favourite_food}
  end
end
