s=gets.chomp
ans=""
s.chars do |ch|
  if ch=="B"
    ans.slice!(-1)
  else
    ans+=ch
  end
end
puts ans
