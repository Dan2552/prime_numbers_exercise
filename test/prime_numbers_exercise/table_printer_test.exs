defmodule TablePrinterTest do
  use ExUnit.Case
  import PrimeNumbersExercise.TablePrinter

  test "print/1: returns a formatted string resembling a table" do
    rows = [
      ["1", "2"],
      ["3", "4"]
    ]

    expectation = String.trim_trailing("""
    |  1 |  2 |
    |  3 |  4 |
    """)

    assert print(rows) == expectation
  end

  test "print/1: makes the columns as wide as the inside text" do
    rows = [
      ["apple", "banana"],
      ["orange", "pinapple"]
    ]

    expectation = String.trim_trailing("""
    |   apple |    banana |
    |  orange |  pinapple |
    """)

    assert print(rows) == expectation
  end

  test "print/1: works with different sized lists" do
    rows = [
      ["1", "2", "3"],
      ["uno", "dos", "tres"],
      ["one", "two", "three"],
      ["un", "deux", "trois"]
    ]

    expectation = String.trim_trailing("""
    |    1 |     2 |      3 |
    |  uno |   dos |   tres |
    |  one |   two |  three |
    |   un |  deux |  trois |
    """)

    assert print(rows) == expectation
  end

  test "print/1: works with integers and nils as inputs" do
    rows = [
      [nil, 1, 2],
      [3, 4, 5]
    ]

    expectation = String.trim_trailing("""
    |    |  1 |  2 |
    |  3 |  4 |  5 |
    """)

    assert print(rows) == expectation
  end
end
