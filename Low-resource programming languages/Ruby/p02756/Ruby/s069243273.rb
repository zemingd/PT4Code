s = gets.chomp
q = gets.chomp.to_i
q_arr = q.times.map{gets.chomp.split(" ")}

r_flag = false
q_arr.each do |(t, f, c)|
  if t == "1" then
    r_flag = !r_flag
  elsif f == "1" then
    if r_flag then
      s = s + c
    else
      s = c + s
    end
  else
    if r_flag then
      s = c + s
    else
      s = s + c
    end
  end
end

if r_flag then
  puts s.reverse
else
  puts s
end
