def merge_sort(arr)
  if arr.length < 2
    return arr
  else
    left_half = merge_sort(arr.slice(0, arr.length/2))
    right_half = merge_sort(arr.slice(arr.length/2, arr.length))
  end

  temp_arr = []
  left_half_index = 0
  right_half_index = 0

  while left_half_index < left_half.length && right_half_index < right_half.length
    if left_half[left_half_index] < right_half[right_half_index]
      temp_arr << left_half[left_half_index]
      left_half_index += 1
    else
      temp_arr << right_half[right_half_index]
      right_half_index += 1
    end
  end

  temp_arr.concat(left_half.slice(left_half_index..-1), right_half.slice(right_half_index..-1))
end
