def pascal_row(n)
  row = [1]  # First element is always 1

  (1..n).each do |k|
    row << row[-1] * (n - k + 1) / k  # Compute next element iteratively
  end

  row
end

puts pascal_row(4).inspect
