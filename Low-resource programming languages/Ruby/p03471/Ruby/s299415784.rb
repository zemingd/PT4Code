n,sum = gets.split.map(&:to_i)

(n+1).times{|x|
  for y in 0..n-x do
    z=n-x-y
    if x*10000 + y*5000+ z*1000 == yen
      puts "#{x} #{y} #{z}"
      exit
    end
  end
}

puts "-1 -1 -1"
