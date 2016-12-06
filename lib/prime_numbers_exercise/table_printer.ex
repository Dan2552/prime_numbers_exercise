defmodule PrimeNumbersExercise.TablePrinter do
  def print(rows) do
    lines = for row <- rows, do: print_line(row)
    Enum.join(lines, "\n")
  end

  defp print_line(row) do
    "|  " <> Enum.join(row, " |  ") <> " |"
  end
end
