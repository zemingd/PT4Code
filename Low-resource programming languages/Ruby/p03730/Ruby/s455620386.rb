a,b,c=gets.split.map &:to_i
b.times do |i|
  if a*i%b == c
    puts :YES
    exit
  end
end
puts :NO