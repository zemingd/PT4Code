S = gets.chomp.split.map(&:to_i)
n = 0

S.length.times do |i|
  if i % (n - 1) / 2 == 0
    puts "Yes"
  elsif i % (n + 3) / 2 == 0
    puts "Yes"
  else
    puts "No"
  end
end