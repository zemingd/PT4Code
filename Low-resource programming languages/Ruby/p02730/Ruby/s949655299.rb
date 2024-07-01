s = gets.chomp
tuyoi = false

def kaibun?(s)
  s = s+s+s
  if s[0..(s.length/2-1)] == s[(s.length/2+1)..-1].reverse
    true
  else
    false
  end
end

tuyoi = kaibun?(s)
tuyoi = kaibun?(s[0..((s.length-1)/2-1)])
tuyoi = kaibun?(s[((s.length+3)/2-1)..-1])

puts tuyoi ? "Yes" : "No"