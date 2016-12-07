defmodule PrimeNumbersExercise do
  def main(args) do
    args
    |> hd
    |> String.to_integer
    |> generate_prime_table
    |> print_table
  end

  defp generate_prime_table(amount_of_numbers) do
    amount_of_numbers
    |> PrimeNumbersExercise.PrimeNumbers.generate
    |> PrimeNumbersExercise.MultiplicationTable.generate_table
  end

  defp print_table(table) do
    table
    |> PrimeNumbersExercise.TablePrinter.print
    |> IO.puts
  end
end
