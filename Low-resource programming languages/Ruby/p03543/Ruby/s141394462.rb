n = gets.chomp.chars

def good?(n)
  (n[0] == n[1] && n[1] == n[2]) || (n[1] == n[2] && n[2] == n[3])
end

puts good?(n) ? 'Yes' : 'No'
