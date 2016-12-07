defmodule MultiplicationTableTest do
  use ExUnit.Case
  import PrimeNumbersExercise.MultiplicationTable
  doctest PrimeNumbersExercise.MultiplicationTable

  test "generate_table/1: creates a multiplication table using supplied numbers" do
    numbers = [1, 2]

    expectation = [
      [nil, 1, 2],
      [1, 1, 2],
      [2, 2, 4]
    ]

    assert generate_table(numbers) == expectation
  end
end
