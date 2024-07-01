s = gets.chomp
t = gets.chomp
alpha = Hash.new { |h, k| h[k] = [] }
len = s.length
for i in 0..len-1
  alpha[s[i]].push(i)
end

now = 0
re = 0
len2 = t.length
for i in 0..len2-1
  if alpha[t[i]].empty?
    puts -1
    exit
  end
  while true do
    tmp = alpha[t[i]].find {|x| x > now  }
    if tmp == nil
      now = 0
      re += 1
    else
      now = tmp
      break
    end
  end
end

puts len * re + now + 1