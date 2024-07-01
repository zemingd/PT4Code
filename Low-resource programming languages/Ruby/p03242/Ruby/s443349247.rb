x=gets.chomp.chars.map &:to_i
3.times do|i|
  if x[i]==1 then x[i]=9
  elsif x[i]==9 then x[i]=1 end
end
puts x.join
