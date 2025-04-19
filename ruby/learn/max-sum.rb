def max_sum(arr)
  current = global = arr[0]
  start = last = temp = 0

  (1...arr.size).each do |i|
    #current = [arr[i], current + arr[i]].max
    #global = [global, current].max
    if arr[i] > current + arr[i]
      current = arr[i]
      temp = i
    else
      current = current + arr[i]
    end
    if current > global
      global = current
      start = temp
      last = i
    end
  end
  subarray = arr[start..last]
  return global, subarray
end

arr = [-2, 1, -3, 4, -1, 2, 1, -5, 4]

p max_sum(arr)
