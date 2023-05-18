# frozen_string_literal: true

def fibs(num, fib_arr = [])
  num.times do |index|
    fib_arr << (index < 2 ? index : fib_arr[index - 1] + fib_arr[index - 2])
  end

  fib_arr
end

def fibs_rec(num)
  num <= 2 ? [0, 1] : (fib_arr = fibs_rec(num - 1)) << fib_arr[-1] + fib_arr[-2]
end
