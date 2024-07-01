bingo = []
3.times { bingo += gets.split.map(&:to_i) }
n = gets.to_i
nums = []
n.times { nums << gets.to_i }
called = []
nums.each do |num|
  bingo.each_with_index do |b, i|
    if num == b
      called << i
    end
  end
end

if called.include?(0) && called.include?(1) && called.include?(2)
  puts "Yes"
elsif called.include?(3) && called.include?(4) && called.include?(5)
  puts "Yes"
elsif called.include?(6) && called.include?(7) && called.include?(8)
  puts "Yes"
elsif called.include?(3) && called.include?(0) && called.include?(6)
  puts "Yes"
elsif called.include?(7) && called.include?(4) && called.include?(1)
  puts "Yes"
elsif called.include?(2) && called.include?(8) && called.include?(5)
  puts "Yes"
elsif called.include?(0) && called.include?(4) && called.include?(8)
  puts "Yes"
elsif called.include?(6) && called.include?(4) && called.include?(2)
  puts "Yes"
else
  puts "No"
end
