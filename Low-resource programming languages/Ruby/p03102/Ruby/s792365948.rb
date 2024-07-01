n,m,c = gets.split(" ").map(&:to_i)

count = 0

b = []
b = gets.split(" ").map(&:to_i)

n.times do |n_c|

  a = gets.split(" ").map(&:to_i)
  if a.zip(b).map{|t| t[0]*t[1] }.reduce(:+) + c > 0
    count += 1
  end
end

puts count
