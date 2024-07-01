n = gets.to_i
i = 0
ss = []
while i < n do 
  ss << gets.chomp
  i += 1
end
ss.map!{|s| s.chars.sort.join}
sss = ss.uniq
re ss - sss
p re