ary = $stdin.readlines
ss = ary[0].chomp
tt = ary[1].chomp
s = ss.split("")
t = tt.split("")

t_kaburi = t.select{|a|!(t.index(a)==t.rindex(a))}.uniq
#s_t_kaburi=s.select{|a|!(s.index(a)==s.rindex(a))}.uniq
sindex = (0...s.length).find_all{|i| t_kaburi.include?(s[i])}
  answer='Yes'
#  p t_kaburi
#  p sindex
sindex.each do|index|
  if !(t[index]==s[index])
    answer = 'No'
    break
  end
end

#if !(t.uniq.size==t.size)
#  answer= 'No'
#end

puts answer
