require 'prime'
x = gets.to_i
dd = [1]
if x > 1
  pd = x.prime_division
  dd = pd.map { |v| v[0] }
end
ans = nil
dd.each do |d|
  for a in 0..x do
    b = a - d
    if a ** 5 - b ** 5 == x
      ans = [a, b]
      break
    end
  end
  break if !ans.nil?
end
puts ans.join(" ")
