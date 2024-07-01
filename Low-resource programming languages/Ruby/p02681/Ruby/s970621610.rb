s = gets.chomp
t = gets.chomp

n = s.length
m = t.length

if s.length + 1 == t.length
  if t[0,n] == s
    puts 'Yes'
    exit
  end
end

puts 'No'
