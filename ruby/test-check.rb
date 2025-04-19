def totalGrps(n, a)
  result = 0


  wish_counts = Hash.new(0)
  a.each { |wishes| wish_counts[wishes] += 1 }

  (0...n).each do |leader_index|
    leader_wishes = a[leader_index]

    wish_counts.each do |wish, count|
      next if wish == leader_wishes

      if count >= 2
        combinations = (count * (count - 1)) / 2
        result += combinations
      end
    end
  end

  result
end

# INPUT
temp = gets.strip.split
n = temp[0].to_i
a = []
for i in (1..n)
  a << temp[i]
end

# OUTPUT
puts totalGrps(n, a)
