x,k,d = gets.split.map(&:to_i)
y = x.abs-d*k
a = [x%d,d-x%d].min
b = [x%d,d-x%d].max
if y >= 0
  puts y
else
  if ( (x-a)%d == 0 && (k-((x-a)/d).abs).even? ) || ( (x+a)%d == 0 && (k-((x+a)/d).abs).even? )
    puts a
  else
    puts b
  end
end