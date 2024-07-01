s = gets.chomp
Q = gets.to_i
Qvery = Q.times.map{gets.split.map(&:to_s)}
cnt = 0
pre = []

Qvery.each do |n|
  if n[0] == "1"
    cnt += 1
    cnt
  else
    if n[1] == "1" && cnt%2 == 0
      pre << n[2]
    end
    if n[1] == "2" && cnt%2 == 0
      s << n[2]
    end
    if n[1] =="2" && cnt%2 == 1
      pre << n[2]
    end
    if n[1] == "1" && cnt%2 == 1
      s << n[2]
    end
  end
end

s = pre.join.reverse + s

if cnt%2 == 0 
  puts s
else
  puts s.reverse
end