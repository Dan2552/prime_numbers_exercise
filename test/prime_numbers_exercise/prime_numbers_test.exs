defmodule PrimeNumbersTest do
  use ExUnit.Case
  import PrimeNumbersExercise.PrimeNumbers
  doctest PrimeNumbersExercise.PrimeNumbers

  test "prime?/1: returns true if number is prime" do
    assert prime?(2)
    assert prime?(7)
    assert prime?(199)
    refute prime?(4)
    refute prime?(198)
  end
end
