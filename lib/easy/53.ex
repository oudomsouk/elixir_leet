defmodule Easy.Solution53 do
  @spec max_sub_array(nums :: [integer]) :: integer
  def max_sub_array(nums) do
    Enum.reduce(nums, {0, 0}, fn n, {cur, max} ->
      newCur = max(n, cur + n)
      {newCur, max(max, newCur)}
    end)
    |> elem(1)
  end
end
