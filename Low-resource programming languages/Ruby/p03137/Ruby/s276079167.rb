N, M = gets.chomp.split.map(&:to_i)
X = gets.chomp.split.map(&:to_i).sort

if X.size == 1
  puts 0 ; exit
end

distance = X[-1] - X[0]
diff = X.each_cons(2).map{ |a, b| b - a }.sort.reverse

(N - 1).times do |n|
  distance -= diff[n]
end

puts distance