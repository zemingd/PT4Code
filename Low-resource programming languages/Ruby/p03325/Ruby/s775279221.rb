_ = gets.chomp.to_i
ary = gets.chomp.split.map(&:to_i)
count = 0

ary.each do |ai|
  quot = ai/2
  remainder = ai%2
  while remainder == 0 && quot!=0
    count += 1
    remainder = quot%2
    quot /= 2
  end
end

puts count
