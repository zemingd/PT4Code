n = gets.chomp.to_i
arr = []
kq = {}
(1..n).each do |i|
  str = gets.chomp.to_s
  sorted = str.split("").sort.join("")
  if kq.keys.include?(str)
    kq[str] = kq[str] + 1
  elsif arr.include?(sorted)
    kq[str] = 2
  end
  arr[i-1] = sorted
end
sum = 0
kq.map {|key, value| sum+= value*(value-1)/2}
puts sum