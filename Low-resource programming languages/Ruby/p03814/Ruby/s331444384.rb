N = gets.chomp

apos = -1
zpos = -1
for i in 0..(N.size- 1) do
  apos = i if apos == -1 && N[i] == 'A'
  zpos = i if N[i] == 'Z'
end

puts zpos - apos + 1