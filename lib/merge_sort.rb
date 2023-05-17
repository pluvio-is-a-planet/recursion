def merge_sort(arr)
  return arr if arr.length < 2

  left_half = merge_sort(arr.slice(0, arr.length/2))
  right_half = merge_sort(arr.slice(arr.length/2, arr.length))

  sorted = []

  until left_half.empty? || right_half.empty?
    left_half.first < right_half.first ? sorted << left_half.shift : sorted << right_half.shift
  end

  sorted.concat(left_half, right_half)
end
