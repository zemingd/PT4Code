list = %w[A C G T]

s = gets.chomp

max = 0
count = 0

s.each_char do |c|
  if list.include?(c)
    count += 1
    max = [max, count].max
  else
    count = 0
  end
end

puts max
