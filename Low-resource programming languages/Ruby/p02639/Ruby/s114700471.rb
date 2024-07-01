s=gets.split.map(&:to_i)
for i in 1..5
  if s[i-1]==0
    puts i
  end
end
