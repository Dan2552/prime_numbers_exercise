defmodule PrimeNumbersExercise.TablePrinter do
  import Enum, only: [map: 2, map_join: 3, max_by: 2, with_index: 1, at: 2]

  def print(rows) do
    widths = calculate_column_widths(rows)
    map_join(rows, "\n", &print_line(&1, widths))
  end

  defp print_line(row, widths) do
    row
    |> with_index
    |> map_join(" |  ", &cell_contents(&1, widths))
    |> format_with_side_borders
  end

  defp calculate_column_widths(rows) do
    List.zip(rows) |> map(&column_max_length(&1))
  end

  defp column_max_length(col) do
    col
    |> Tuple.to_list
    |> max_by(&String.length(&1))
    |> String.length
  end

  defp format_with_side_borders(string) do
    "|  " <> string <> " |"
  end

  defp cell_contents(tuple, widths) do
    {contents, index} = tuple
    width = at(widths, index)
    String.rjust(contents, width)
  end
end
