defmodule PrimeNumbersExercise do
  def main(args) do
    args
    |> hd
    |> String.to_integer
    |> generate_table
    |> PrimeNumbersExercise.TablePrinter.print
    |> IO.puts
  end

  defp generate_table(amount_of_numbers) do
    1..amount_of_numbers
    |> Enum.to_list
    |> PrimeNumbersExercise.MultiplicationTable.generate_table
  end
end
