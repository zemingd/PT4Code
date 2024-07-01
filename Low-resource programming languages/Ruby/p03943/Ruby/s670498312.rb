s = gets.chomp

step = 0

char = nil

for i in 0...s.size
  char = s[i] if char.nil?
  if char != s[i]
    char = s[i]
    step += 1
  end
end

puts step