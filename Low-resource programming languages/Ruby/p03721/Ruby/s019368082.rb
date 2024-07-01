str = ""
n,k = gets.chop.split(" ").map(&:to_i)
n.times do |a,b|
  a,b = gets.chop.split(" ").map(&:to_i)
  a2 = a.to_s
  b.times do
    str<<a2
    break if str.length == k
  end
end
puts str[k-1]