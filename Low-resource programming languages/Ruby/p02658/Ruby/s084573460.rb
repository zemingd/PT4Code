n = gets.to_i
ary = gets.split.map(&:to_i)
if ary.include?(0)
  puts 0
  exit
end

sum = 1
ary.each do |i|
  sum*=i
  if sum>1000000000000000000
    puts -1
    exit
  end
end
puts sum