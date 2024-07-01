a = gets.to_i

ml = gets.split.map(&:to_i).sort
mx = 10**18

if ml.include?(0)
  puts 0
  exit
end
res = 1
ml.each do |i|
  res *= i
  if res > mx
    puts -1
    exit
  end
end
puts res

