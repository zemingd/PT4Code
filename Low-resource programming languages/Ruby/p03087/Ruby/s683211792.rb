N, Q = gets.chomp.split(" ").map{|s| s.to_i }
S = gets.chomp

q_arr = []
Q.times do |i|
  q_arr << gets.chomp.split(" ").map{|s| s.to_i }
end

iarr = []
count = 0
N.times do |i|
  count += 1 if S[i..(i+1)] == "AC"
  iarr << count
end

q_arr.each do |l, r|
  left = iarr[l-1]
  right = iarr[r-1]
  right -= 1 if iarr[r-2] == iarr[r-1] - 1
  count = right - left
  count += 1 if count != 0

  puts count
end
