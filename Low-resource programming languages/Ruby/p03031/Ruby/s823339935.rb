N,M = gets.split(' ').map(&:to_i)
light = M.times.map{ gets.split(' ').map(&:to_i) }
p = gets.split(' ').map(&:to_i)

try = 2**N-1
flag = 0
ans = 0
for i in 0..try
  switch = i.to_s(2)
  switch = "0" * (N-switch.length) + switch
  #puts "switch=#{switch}"
  #puts switch
  flag = 0
  for t in 0..M-1
    light_cnt = 0
    for u in 0..(light[t][0]-1)
      if switch[light[t][u-1]] == "1"
        light_cnt += 1
      end
    end
  #  puts "light_cnt=#{light_cnt}"
    if (light_cnt%2)==p[t]
      next
    else
      flag = 1
      break
    end
  end
  #puts "flag=#{flag}"
  ans += 1 if flag == 0
end
puts ans
