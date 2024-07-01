k = gets.to_i
a,b = gets.split.map(&:to_i)

1001.times{|i|
  x = k*i
  if a<=x && x<=b
    puts "OK"
    exit
  end
}

puts "NG"