l,r = gets.split.map(&:to_i)

result = []

if i == 2019 || j == 2019
  puts 0
  break
else
    (l..r).each do |i|
      (l..r).each do |j|
        result << (i * j).modulo(2019)
    end
  end
end

puts result.min