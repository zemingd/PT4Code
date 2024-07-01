num = gets.to_i
arr = []
count = 0
(1..num).each do |i|
  (1..num).each do |j|
    (1..num).each do |k|
      arr.push [i,j,k]
    end
  end
end
# p arr
(0..arr.length-1).each do |i|
  count += arr[i].inject{|a, b| a.gcd(b)}
end
p count