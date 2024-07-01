STDIN.gets
s=STDIN.gets
while t=STDIN.gets
  l,r=t.split.map(&:to_i)
  puts [s[l-1..r-2],s[l..r-1]].map(&:chars).transpose.map(&:join).count('AC')
end
