s=gets
ans=999
for i in 0..s.length-3 do
  ans=[ans,(753-s[i,3].to_i).abs].min
end
puts(ans)