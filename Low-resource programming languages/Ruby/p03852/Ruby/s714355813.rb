c = gets.chomp


def checker(c)
  s = ["a","i","u","e","o"]
  s.each do |s|
    if c == s
      return true
      break
    end
  end
end

if checker(c) == true
  puts "vowel"
else
  puts "consonant"
end
