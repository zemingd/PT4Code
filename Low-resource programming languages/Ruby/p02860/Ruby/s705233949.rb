n = gets.to_i
s = gets.to_s

if s.length > 1
puts s[0,n/2]+s[0,n/2] == s ? 'Yes' : 'No'
else
puts 'No'
end