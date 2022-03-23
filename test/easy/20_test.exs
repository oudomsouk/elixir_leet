defmodule Easy.Solution20Test do
  use ExUnit.Case
  import Easy.Solution20

  test "should return true" do
    assert is_valid("()") == true
    assert is_valid("()[]{}") == true
  end
end
