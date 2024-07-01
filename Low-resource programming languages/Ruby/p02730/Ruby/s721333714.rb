s=gets.chomp
n=s.length/2-1
puts s[0..n] == s.reverse[0..n] ? 'Yes' : 'No'