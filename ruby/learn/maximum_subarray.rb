def max_subarray(arr)
  return [] if arr.empty?

  max_sum = arr[0]
  current_sum = arr[0]
  start_idx = 0
  end_idx = 0
  temp_start = 0

  arr[1..].each_with_index do |num, i|
    if num > current_sum + num
      current_sum = num
      temp_start = i + 1
    else
      current_sum += num
    end

    if current_sum > max_sum
      max_sum = current_sum
      start_idx = temp_start
      end_idx = i + 1
    end
  end

  subarray = arr[start_idx..end_idx]
  { max_sum: max_sum, subarray: subarray }
end

input = [1, -2, 3, 4, -1, 2, 1, -5, 4]
max_subarray(input)
