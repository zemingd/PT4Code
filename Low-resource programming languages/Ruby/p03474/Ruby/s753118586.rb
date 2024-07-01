a,b = gets.split.map &:to_i
s = gets.chomp

f = true
for i in 0...a
  f = false if s[i]=='-'
end

f = false if s[a]!='-'

for i in 0...b
  f = false if s[a+i+1]=='-'
end

puts f ? 'Yes' : 'No'