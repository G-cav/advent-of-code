defmodule AocDay1Test do
  use ExUnit.Case
  doctest AocDay1

  test "counting increases" do
    list = AocDay1.readFile("lib/input.txt")
    count = AocDay1.count(Enum.map(list, &String.to_integer/1))
    assert count == 1162
  end

  test "problem 2 windows" do
    list = AocDay1.readFile("lib/input.txt")
    count = AocDay1.window(Enum.map(list, &String.to_integer/1))
    assert count == 1190
  end
end
