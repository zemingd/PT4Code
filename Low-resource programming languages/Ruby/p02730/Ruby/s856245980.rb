def kaibun?(s)
  s == s.reverse
end

def skaibun?(s)
  return false unless kaibun?(s)
  p = (s.length - 1) / 2
  return false unless kaibun?(s.slice(0..p - 1))
  q = (s.length + 3) / 2
  return false unless kaibun?(s.slice((q - 1)..(s.length - 1)))
  return true
end

S = gets.chomp

puts skaibun?(S) ? "Yes" : "No"
