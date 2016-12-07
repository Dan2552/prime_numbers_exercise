defmodule PrimeNumbersExerciseTest do
  use ExUnit.Case
  doctest PrimeNumbersExercise
  import ExUnit.CaptureIO

  test "main/1: prints a multiplication table of the supplied size" do
    capure = capture_io(fn -> PrimeNumbersExercise.main(["2"]) end)

    expectation = String.trim_trailing("""
    |    |  1 |  2 |
    |  1 |  1 |  2 |
    |  2 |  2 |  4 |
    """)

    assert capure == expectation
  end
end
