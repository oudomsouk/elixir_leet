defmodule Easy.Solution1920 do
  @moduledoc """
  https://leetcode.com/problems/build-array-from-permutation/
  
  Given a zero-based permutation nums (0-indexed), builds an array ans of the
  same length where ans[i] = nums[nums[i]] for each 0 <= i < nums.length.
  """

  @spec build_array(nums :: [integer]) :: [integer]
  def build_array(nums) do
    nums
    |> Enum.with_index(0)
    |> Enum.map(fn {k, _} -> Enum.at(nums, k) end)
  end
end
