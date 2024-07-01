last = nil
cnt = 0
first = true
gets.chomp.chars do |ch|
  if first then 
    print ch
    first = false
  else
     cnt = cnt + 1
  end
  last = ch
end

print cnt - 1
print last