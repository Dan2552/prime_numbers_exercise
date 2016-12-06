defmodule TablePrinterTest do
  use ExUnit.Case
  import PrimeNumbersExercise.TablePrinter
  doctest PrimeNumbersExercise.TablePrinter

  test "print: returns a formatted string resembling a table" do
    rows = [
      ["1", "2"],
      ["3", "4"]
    ]

    expectation = """
    |  1 |  2 |
    |  3 |  4 |
    """

    assert print(rows) == expectation
  end
end
