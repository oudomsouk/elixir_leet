defmodule Easy.Solution1672Test do
  use ExUnit.Case
  import Easy.Solution1672

  test "should get the max sum" do
    assert maximum_wealth([[1,2,3],[3,2,1]]) == 6
  end

end