L, R = gets.split.map(&:to_i)

if L == 0
  puts 0
  exit
end

if R - L > 2019
  puts 0
else
  result = []
  L.upto(R) do |i|
    result << i % 2019
  end
  r2 = result.sort
  puts r2[0] * r2[1]
end