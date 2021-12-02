defmodule AocDay2Test do
  use ExUnit.Case
  doctest AocDay2

# Changes due to part 2 will make this test fail
  test "Day 2 part 1" do
      result = AocDay2.start("lib/day2.txt")
      assert result == {:ok, 894, 1857}
  end

  test "Day 2 part 2" do
      result = AocDay2.start("lib.day2.txt")
      assert result == {:ok, 864078, 1857, 894}
  end
end