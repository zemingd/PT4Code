s = gets.chomp

index = 0
result = true

while index < s.size-1
  if s[index] == "d"
    if s[index..index+6] == "dreamer" && s[index+7] != "a"
      index += 7
      next
    elsif s[index..index+4] == "dream"
      index += 5
      next
    else
      result = false
      break
    end
  elsif s[index] == "e"
    if s[index..index+5] == "eraser"
      index += 6
      next
    elsif s[index..index+4] == "erase"
      index += 5
      next
    else
      result = false
      break
    end
  else
    result = false
    break
  end
end

puts result ? "YES" : "NO"