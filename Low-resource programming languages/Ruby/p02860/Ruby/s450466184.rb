input = readlines()

n = input.shift.chomp.to_i
s = input.shift.chomp.to_s

if n.odd?
  puts 'No'
  exit()
end

puts s[0, n / 2] == s[n / 2, n / 2] ? 'Yes' : 'No'