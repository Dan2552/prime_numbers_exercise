defmodule PrimeNumbersExercise.MultiplicationTable do
  def generate_table(numbers) do
    heading = [nil | numbers]
    [heading | generate_rows(numbers)]
  end

  defp generate_rows(numbers) do
    Enum.map(numbers, &generate_row(&1, numbers))
  end

  defp generate_row(row_multiplier, numbers) do
    values = Enum.map(numbers, fn(col_multiplier) ->
      row_multiplier * col_multiplier
    end)

    [row_multiplier | values]
  end
end
