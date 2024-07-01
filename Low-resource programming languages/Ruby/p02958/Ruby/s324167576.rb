n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

count = 0
n.times do |i|
  if a[i] != i+1
    count += 1
  end
  if count > 2
    puts 'NO'
    exit
  end
end

puts 'YES'
