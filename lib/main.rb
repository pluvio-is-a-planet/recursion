def fibs(n, fib_arr = [])
  n.times do |index|
    index < 2 ? fib_arr << index : fib_arr << fib_arr[index - 1] + fib_arr[index - 2]
  end

  fib_arr
end

def fibs_rec(n)
  n <= 2 ? [0, 1] : (fib_arr = fibs_rec(n -1 )) << fib_arr[-1] + fib_arr[-2]
end
