a,b,c = gets.chomp.split(' ').map(&:to_i)
ans = "No"
if a == b
  if a != c
    ans = "Yes"
  end
elsif b == c
  if a != c
    ans = "Yes"
  end
elsif a == c
  if a != b
    ans = "Yes"
  end
end

p ans