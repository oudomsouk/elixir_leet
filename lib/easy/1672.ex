defmodule Easy.Solution1672 do
  @spec maximum_wealth(accounts :: [[integer]]) :: integer
  def maximum_wealth(accounts) do
    accounts
    |> Enum.map(&Enum.sum/1)
    |> Enum.max()
  end
end