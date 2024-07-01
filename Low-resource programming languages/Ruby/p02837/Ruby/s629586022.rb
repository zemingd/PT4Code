nums = gets.to_i
table = []
nums.times do |i|
  base =  []
  nums.times { base << nil }
  table << base
end

nums.times do |i|
  testenomy_count = gets.to_i
  testenomy_count.times do
    testenomy = gets.split(" ").map(&:to_i)
    table[i][(testenomy[0] - 1)] = testenomy[1]
  end
end

table.size.times do |i1|
  testenomy.size.times do |i2|
    if table[i1][i2] == 1 && table[i2][i1] == 1 && i1 != i2
      honesty += 1
    end
  end
end

puts honesty