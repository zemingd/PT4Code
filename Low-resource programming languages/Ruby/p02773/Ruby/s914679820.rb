n= gets.to_i
s = Array.new(n){gets.chars}.sort
#ans = Queue.new
ans = Array.new
#puts s
max=1
count = 1
for i in 0..n-2
  if s[i] == s[i+1]
    count += 1
  else
    if count>max
      max = count
    end
    count = 1
  end
end

if count > max
   max = count
end

count = 1
for i in 0..n-2
  if s[i] == s[i+1]
    count += 1
  else
    if count == max
      ans.push(s[i])
    end
    count = 1
  end
end

if count == max
  ans.push(s[n-1])
end

puts ans
