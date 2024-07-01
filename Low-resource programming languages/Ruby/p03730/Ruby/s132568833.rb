a,b,c=gets.chomp.split.map(&:to_i)
remainders = {}
(1..(b-1 > 0 ? b-1 : 1)).map{|value| remainders.store(value,0)}
count = 1
loop do
  tempRemainder = (a * count - c) % b
  remainders[tempRemainder] += 1 if tempRemainder != 0
  if tempRemainder == 0
    puts "YES"
    break
  elsif remainders[tempRemainder] > 1
    puts "NO"
    break
  end
  count += 1
end