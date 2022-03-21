defmodule Easy.Solution53Test do
  use ExUnit.Case
  import Easy.Solution53

  test "should get sum" do
    assert max_sub_array([5, 4, -1, 7, 8]) == 23
  end
end
