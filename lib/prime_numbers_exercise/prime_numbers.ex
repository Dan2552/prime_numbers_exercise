defmodule PrimeNumbersExercise.PrimeNumbers do
  def prime?(number) do
    case number do
      1 -> false
      2 -> true
      _ -> not Enum.any?(2..(number - 1), &divisible_by?(number, &1))
    end
  end

  defp divisible_by?(lhs, rhs) do
    rem(lhs, rhs) == 0
  end
end
