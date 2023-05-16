def fibs(n, fib_arr = [])
  n.times do |index|
    index < 2 ? fib_arr << index : fib_arr << fib_arr[index - 1] + fib_arr[index - 2]
  end

  fib_arr
end
