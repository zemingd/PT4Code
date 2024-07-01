N,K = gets.chomp.split.map(&:to_i)
As = gets.chomp.split.map(&:to_i)
def function(x)
  result = 0
  As.each do |a|
    result += x^a
  end
  result
end
f_max = 0
(0..K).each do |i|
  if function(i) > f_max
    f_max = function(i)
  end
end
puts f_max
