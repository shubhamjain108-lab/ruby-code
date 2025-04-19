def max_sumval(arr)
  return if arr.empty?

  max_sum = arr[0]
  current_sum = arr[0]

  arr[1..].each do |num|
    current_sum = [num, current_sum + num].max
    max_sum = [max_sum, current_sum].max
  end
  max_sum
end

def max_subarray(arr)
  return if arr.empty?

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
  {max_sum: max_sum, subarray: arr[start_idx..end_idx]}
end

input = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
p max_sumval(input)
p max_subarray(input)
