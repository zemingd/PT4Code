x,k,d=gets.split.map(&:to_i)
if x>=k*d
  puts x-k*d
else
  if (x/d+k).even?
    puts x%d
  else
    puts d-x%d
  end
end

