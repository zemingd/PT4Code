a, b, c = gets.split.map(&:to_i)

d = 1
1.upto(b) do |i|
  d = a * i
  if d % b == c
    puts 'YES'
    exit
  end
  d = 1
end
puts 'NO'
