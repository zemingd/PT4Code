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
    (i+1).upto(R) do |j|
      result << i * j % 2019
    end
  end
  puts result.min
end