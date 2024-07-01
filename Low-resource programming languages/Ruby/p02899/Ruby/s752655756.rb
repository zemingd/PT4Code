N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)

a = {}
N.times do |i|
  a[i+1] = A[i]
end

puts a.sort_by {|k,v| v }.map {|k,v| k}.join(" ")
