arr = [-2, 1, -3, 4, -1, 2, 1, -5, 4]

arr1 = arr.partition { |a| a.negative? }

p arr1[0]
p arr1[1]
