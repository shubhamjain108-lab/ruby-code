def two_sum_sorted(nums, target)
  nums_with_index = nums.each_with_index.to_a.sort_by { |num, _| num }
  left = 0
  right = nums_with_index.length - 1

  while left < right
    sum = nums_with_index[left][0] + nums_with_index[right][0]

    if sum == target
      return [nums_with_index[left][1], nums_with_index[right][1]].sort
    elsif sum < target
      left += 1
    else
      right -= 1
    end
  end

  []
end

# Example Usage
nums = [2, 7, 11, 15]
target = 9
p two_sum_sorted(nums, target)
