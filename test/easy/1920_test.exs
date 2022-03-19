defmodule Easy.Solution1920Test do
  use ExUnit.Case
  import Easy.Solution1920

  test "should build array" do
    assert Easy.Solution1920.build_array([0, 2, 1, 5, 3, 4]) == [0, 1, 2, 4, 5, 3]
  end
end
