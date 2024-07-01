a,b = gets.chomp.split(' ').map(&:to_i)

for i in (b*10)..((b*10)+9)
  if ((i.to_f * 0.08).floor == a)
    puts i
    exit
  end
end

puts '-1'
