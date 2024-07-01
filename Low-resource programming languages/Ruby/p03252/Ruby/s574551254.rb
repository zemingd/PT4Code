ary = $stdin.readlines
ss = ary[0].chomp
tt = ary[1].chomp
s = ss.split("")
t = tt.split("")

t_kaburi = t.select{|a|!(t.index(a)==t.rindex(a))}.uniq
tindex = (0...t.length).find_all{|i| t_kaburi.include?(t[i])}
sindex = (0...s.length).find_all{|i| t_kaburi.include?(s[i])}|tindex
  answer='Yes'
#p t_kaburi
#p sindex
#p tindex
sindex.each do|index|
  if !(t[index]==s[index])
    answer = 'No'
    break
  end
end
puts answer
