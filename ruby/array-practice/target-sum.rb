def two_sum(nums, target)
  hash = {}

  nums.each_with_index do |a, i|
    current = target - a
    if hash.key?(current)
      return [hash[current], i]
    end
    hash[a] = i
  end
end
nums = [2, 7, 11, 15]
target = 18
p two_sum(nums, target)
