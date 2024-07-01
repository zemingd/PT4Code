N = gets.to_i

strings = Hash.new {0}

N.times.map do
  sorted = gets.chomp.chars.sort.join
  strings[sorted] += 1
end

ans = 0

strings.each do |k, v|
  if v >= 2
    (1..v-1).each do |i|
      ans += i
    end
  end
end

puts ans
