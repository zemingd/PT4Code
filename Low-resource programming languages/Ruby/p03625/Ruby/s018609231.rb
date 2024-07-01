N=gets.to_i
a=gets.split.map(&:to_i)

h = Hash.new(0)

a.each{|m|
  h[m] += 1
}

h=h.sort{|(k1, v1), (k2, v2)| v2 <=> v1 }

ans = []
idx = 0
h.each{|k,v|
  if v>1 then
    ans<<k
    idx+=1
  end
}

ans.sort!.reverse!

if idx>1 then
  puts ans[0]*ans[1]
else
  puts 0
end
