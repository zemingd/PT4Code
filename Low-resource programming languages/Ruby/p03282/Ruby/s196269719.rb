def is_all1(s)
  s.each_char{|c|
    if c != '1'
      return false
    end
  }
  return true
end

s = gets.chomp!
k = gets.to_i
if k == 1 && s[0] == '1'
  puts 1
elsif is_all1(s)
  puts 1
else
  s.each_char{|c|
    if c != '1'
      puts c
      break
    end
  }
end
