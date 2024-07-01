n = gets.to_i
te = n.times.map{ gets.split.map(&:to_i) }.sort_by!{|x|x[1]}

b = 0
f = true
n.times do |i|
  
  t = te[i][0]
  e = te[i][1]
  
  if e < b + t
    f = false
    break
  else
    b = b + t
  end
end

puts f ? "Yes" : "No" 