defmodule PrimeNumbersExerciseTest do
  use ExUnit.Case
  doctest PrimeNumbersExercise
  import ExUnit.CaptureIO

  test "main/1: prints a multiplication table of the supplied size, skipping numbers that aren't prime" do
    capure = capture_io(fn -> PrimeNumbersExercise.main(["2"]) end)

    expectation = """
    |    |  2 |  3 |
    |  2 |  4 |  6 |
    |  3 |  6 |  9 |
    """

    assert capure == expectation
  end
end
