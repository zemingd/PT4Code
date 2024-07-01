N, Q = gets.chomp.split(" ").map{|s| s.to_i }
S = gets.chomp

q_arr = []
Q.times do |i|
  q_arr << gets.chomp.split(" ").map{|s| s.to_i }
end

iarr = []
(S.length-1).times do |i|
  iarr[i] = S[i..(i+1)] == "AC" ? 1 : 0
end

q_arr.each do |l, r|
  puts iarr[(l-1)..(r-2)].inject(:+)
end
