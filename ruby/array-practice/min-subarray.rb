def min_subarray_with_target(target, nums)
  left = 0
  sum = 0
  min_length = Float::INFINITY
  result_subarray = []

  nums.each_with_index do |num, right|
    sum += num

    while sum >= target
      p sum
      if (right - left + 1) < min_length
        min_length = right - left + 1
        p result_subarray = nums[left..right] # Capture the subarray
      end

      sum -= nums[left]
      left += 1
      p left
      p right
    end
  end

  return min_length == Float::INFINITY ? [] : result_subarray
end

# Example test cases
p min_subarray_with_target(7, [2,3,1,2,4,3]) # Output: [4,3]
#p min_subarray_with_target(4, [1,4,4])       # Output: [4]
#p min_subarray_with_target(11, [1,1,1,1,1,1,1,1]) # Output: []
