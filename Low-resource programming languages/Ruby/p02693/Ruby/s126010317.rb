k = gets.chomp.to_i
a,b = gets.chomp.split.map(&:to_i)
result = []

(a..b).each do |i|
  if i % k == 0
    result << i
  end
end

result.empty? ? puts 'NG': puts 'OK'