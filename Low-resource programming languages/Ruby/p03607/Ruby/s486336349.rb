n = gets.to_i

num = Hash.new{|h,k| h[k] = 0}

n.times do
  m = gets.to_i
  num[m] += 1
end

puts num.count{|k,v| v%2 == 1}
