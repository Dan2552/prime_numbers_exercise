# PrimeNumbersExercise

First attempt at Elixir

Prints out a multiplication table of primes e.g.:
```
|    |   2 |   3 |   5 |
|  2 |   4 |   6 |  10 |
|  3 |   6 |   9 |  15 |
|  5 |  10 |  15 |  25 |
```

## How to run
- `mix escript.build`
- `./prime_numbers_exercise n` where `n` is the number of primes.

## What I'm pleased with
- As a first-ever attempt at a language, to me it seems fairly readable and succinct.
- Test coverage.

## What I would do with more time
- Since I thought about it/discovered it fairly late, I would look at using `Stream` throughout and looking to reduce any extra iterations that weren't needed, particularly in the table printing. I notice that memory usage is quite high when dealing with large numbers.
- Using something to output other than printing to STDOUT would allow to get rid of the need to measure the table column-widths by iterating through everything in advance.
- Have a look at `doctest` - I noticed it in the generated code and heard it mentioned on an Elixir YouTube video, sounded quite neat.
- Have a play around with what Elixir calls "processes" (that apparently aren't actually processes) or any other kinds of asynchronicity. I'm not really taking advantage of Elixir's immutable state.
- Better checks/errors on unexpected arguments to public APIs. Though tbh, having not really read many blogs, or any books, I'm not yet clear on how standard these are in Elixir.
- Docs on the public functions.
- Double check agaisnt a language style guide.
- Static analysis to check for anything silly.
