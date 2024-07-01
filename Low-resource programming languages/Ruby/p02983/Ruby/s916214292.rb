mod = 2019

l, r = gets.split.map(&:to_i)

if r - l >= mod
  puts 0
elsif l % mod > r % mod
  puts 0
else
  res = mod
  (l...r).each do |i|
    ((i+1)..r).each do |j|
      res = [res, (i * j) % mod].min
    end
  end

  puts res
end