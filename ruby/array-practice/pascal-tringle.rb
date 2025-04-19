def pascal_triangle(rows)
  triangle = [[1]]

  (1...rows).each do |i|
    prev_row = triangle[i - 1]
    new_row = [1]

    (1...prev_row.length).each do |j|
      new_row << prev_row[j - 1] + prev_row[j]
      p new_row
    end

    new_row << 1
    triangle << new_row
  end

  max_width = triangle.last.join(" ").length  # Get width of last row for centering

  triangle.each { |row| puts row.join(" ").center(max_width) }
end

pascal_triangle(6)
