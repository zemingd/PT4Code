n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

sum = 0
a.each{|an| sum += an}

cnt = 0
a.each do |an|
  cnt += 1 if an*(4*m) >= sum
end
(cnt >= m) ? (puts "Yes"):(puts "No")
