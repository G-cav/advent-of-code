defmodule AocDay2 do
    def start(path) do
        File.stream!(path)
        |> Stream.map(&String.trim(&1, "\n"))
        |> Stream.map(&String.split(&1, " "))
        |> Stream.map(fn [a | b] -> [a, String.to_integer(hd(b))] end)
        |> Enum.to_list()
        |> count(0,0,0)
    end

    def count([h | t], depth, horizontal, aim) do
        case h do
            ["forward", x] -> count(t, depth + (aim * x), horizontal + x, aim)

            ["up", x] -> count(t, depth, horizontal, aim - x)

            ["down", x] -> count(t, depth, horizontal, aim + x)

        end
    end

    def count([], depth, horizontal, aim), do: {:ok, depth, horizontal, aim}

end

