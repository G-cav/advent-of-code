defmodule AocDay1 do
  def readFile(path) do
    File.stream!(path)
    |> Stream.map(&String.trim(&1, "\n"))
    |> Enum.to_list()
  end

  def count(list), do: count_greater(list, 0, List.first(list))
  def count_greater([], count, _), do: count
  def count_greater([head | tail], count, previous) do
    if(head > previous) do
        count_greater(tail, count + 1, head)
    else
        count_greater(tail, count, head)
    end
  end

  def window(list), do: window_start(list, 0)
  def window_start(list, count) when length(list) < 4 do count end
  def window_start([head | tail], count) do
    window1 = head + Enum.at(tail, 0) + Enum.at(tail,1)
    window2 = Enum.at(tail, 0) + Enum.at(tail, 1) + Enum.at(tail, 2)
    if window1 < window2 do
      window_start(tail, count + 1)
    else
      window_start(tail, count)
    end
  end
end
