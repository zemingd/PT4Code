N, M = gets.strip.split.map(&:to_i)
a = M.times.map { gets.strip.to_i }

s = []
a << N

p = 0
a.each do |i|
  sum = i - p - 1
  if sum <= 0
    puts 0
    exit
  elsif sum <= 3
    s << sum
  else
    b = sum / 3
    c = sum % 3
    sum2 = 3 ** b
    if c == 2
      sum2 *= 2 
    elsif c == 1
      sum2 += 1
    end
    s << sum2
  end 
end

puts s.inject(:*) / 1000000007
