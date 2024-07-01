deta = readlines
ex_bingo = deta[0..2].map(&:chomp).map { |line| line.split(" ")}

bingo = ex_bingo.flatten.map(&:to_i)

result = []

deta[3].to_i.times do |i|
  if bingo.include?(deta[3 + (i + 1)].to_i) 
     result << bingo.index(deta[3 + (i + 1)].to_i)
  end
end

if result == []
  puts "No"
elsif (result && [0, 1, 2]).length == 3 
  puts "Yes"
elsif (result && [0, 3, 6]).length == 3
  puts "Yes"
elsif (result && [0, 4, 8]).length == 3
  puts "Yes"
elsif (result && [1, 4, 7]).length == 3
  puts "Yes"
elsif (result && [2, 4, 6]).length == 3
  puts "Yes"
elsif (result && [2, 5, 8]).length == 3
  puts "Yes"
elsif (result && [3, 4, 5]).length == 3
  puts "Yes"
else 
  puts "No"
end