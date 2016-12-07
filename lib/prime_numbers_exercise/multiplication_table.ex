defmodule PrimeNumbersExercise.MultiplicationTable do
  import Enum, only: [map: 2]

  def generate_table(numbers) do
    heading = [nil | numbers]
    [heading | generate_rows(numbers)]
  end

  defp generate_rows(numbers) do
    map(numbers, &generate_row(&1, numbers))
  end

  defp generate_row(row_multiplier, numbers) do
    values = map(numbers, fn(col_multiplier) ->
      row_multiplier * col_multiplier
    end)

    [row_multiplier | values]
  end
end
