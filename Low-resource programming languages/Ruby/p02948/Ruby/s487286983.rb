n, m = gets.chomp.split(' ').map{|i| i.to_i }

work = []

n.times{|i|
  ai, bi = gets.chomp.split(' ').map{|j| j.to_i }
  if ai <= m
    work[i] = [ai, bi]
  end
}

work_s = work.sort_by{|i| i[0] }.sort_by{|i| i[1] }.reverse
# p work
# p work_s

index = -1
dates = 0
score = 0
while true
  index += 1
  if dates >= m || index >= work_s.length
    break
  elsif dates + work_s[index][0] > m
    next
  end
  score += work_s[index][1]
  dates += 1
end

puts score
