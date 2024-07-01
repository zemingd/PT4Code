a,b,c = gets.split.map(&:to_i)

1000.times{|i|
  if a*i%b==c then
    puts 'YES'
    exit
  end
}

puts 'NO'