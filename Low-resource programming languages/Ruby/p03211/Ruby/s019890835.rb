s=gets.chomp
ans=753
for i in 0..s.size-3
  ans=[ans,(753-(s[i]+s[i+1]+s[i+2]).to_i).abs].min
end
puts ans
