fizz_buzz = fn 
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

call_fizz_buzz_with_rem = fn n -> fizz_buzz.(rem(n,3), rem(n,5), n) end

IO.puts call_fizz_buzz_with_rem.(10)
IO.puts call_fizz_buzz_with_rem.(11)
IO.puts call_fizz_buzz_with_rem.(12)
IO.puts call_fizz_buzz_with_rem.(13)
IO.puts call_fizz_buzz_with_rem.(14)
IO.puts call_fizz_buzz_with_rem.(15)
IO.puts call_fizz_buzz_with_rem.(16)
