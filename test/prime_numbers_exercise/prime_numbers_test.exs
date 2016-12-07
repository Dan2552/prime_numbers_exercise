defmodule PrimeNumbersTest do
  use ExUnit.Case
  import PrimeNumbersExercise.PrimeNumbers

  test "prime?/1: returns true if number is prime" do
    assert prime?(2)
    assert prime?(7)
    assert prime?(199)
    refute prime?(4)
    refute prime?(198)
  end

  test "generate/1: generates a list of prime numbers" do
    assert generate(4) == [2, 3, 5, 7]
    assert generate(12) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37]
  end
end
