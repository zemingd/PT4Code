s = gets.chomp.split('').map(&:to_i)
i = 0
switch = false
while i < s.size-1
  # puts "s[i]:#{s[i]}  s[i+1]:#{s[i+1]}"
  if s[i] == s[i+1]
    switch = true
  end
  i += 1
end

if switch
  puts "Bad"
else
  puts "Good"
end