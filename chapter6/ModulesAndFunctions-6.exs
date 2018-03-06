defmodule Chop do
  def guess(val, a..b) do
    helper(val, a..b, div(a+b,2))
  end
  def helper(val, _, guessedValue) when guessedValue === val do
    IO.puts "It is #{guessedValue}"
  end

  def helper(val, _..b, guessedValue) when guessedValue <  val do
    IO.puts "Is it #{guessedValue}?"
    guess(val, guessedValue+1..b)
  end

  def helper(val, a.._, guessedValue) when guessedValue > val do
    IO.puts "Is it #{guessedValue}?"
    guess(val, a..guessedValue-1)
  end
end