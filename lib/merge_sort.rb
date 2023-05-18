# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length < 2

  left_half = merge_sort(arr.slice(0, arr.length / 2))
  right_half = merge_sort(arr.slice(arr.length / 2, arr.length))

  merge(left_half, right_half)
end

def merge(left_half, right_half)
  sorted = []

  until left_half.empty? || right_half.empty?
    sorted << (left_half.first < right_half.first ? left_half.shift : right_half.shift)
  end

  sorted.concat(left_half, right_half)
end
