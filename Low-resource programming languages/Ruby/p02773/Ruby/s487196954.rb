n = gets.to_i
ar = Array.new(n) { gets.chomp }
ar.sort!
ar << ""

max_cnt = 0
cnt = 0
prev = ""
ans = []
ar.each do |s|
  if prev == s
    cnt += 1
  else
    if cnt == max_cnt
      ans << prev
    elsif cnt > max_cnt
      max_cnt = cnt
      ans = [prev]
    end
    prev = s
    cnt = 1
  end
end
puts ans
