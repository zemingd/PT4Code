nums = gets.to_i
table = []
nums.times { table << [] }
honesty = 0

nums.times do |i|
  testenomy_count = gets.to_i
  testenomy_count.times do
    testenomy = gets.split(" ").map(&:to_i)
    table[i][(testenomy[0] - 1)] = testenomy[1]
  end
end

table.size.times do |pn|
  table.size.times do |i2|
    if table[pn][i2] == 1 && table[i2][pn] == 1
      honesty += 1
    end
  end
end

puts honesty