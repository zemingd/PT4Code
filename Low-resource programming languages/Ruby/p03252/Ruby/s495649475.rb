ary = $stdin.readlines
ss = ary[0].chomp
tt = ary[1].chomp
s = ss.split("")
t = tt.split("")
if t.uniq.size==t.size
  puts 'Yes'
else
  puts 'No'
end
