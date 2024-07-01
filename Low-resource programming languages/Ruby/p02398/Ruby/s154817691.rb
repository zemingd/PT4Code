a, b, c= gets.chomp.split(" ").map(&:to_i)

result = []
i = 1

while i <= c do
  remainder = c % i
  if remainder == 0
    result << i
  end 
  i += 1
end

count = 0

(a..b).each do |e|
  result.each do |i|
    if e == i
      count += 1
    end
  end
end

puts count
