n=gets.to_i
s=gets.chomp
if n%2!=0
  puts 'No'
  exit
end
puts s[0,n/2]==s[n/2...n] ? 'Yes' : 'No'