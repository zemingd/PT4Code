n = gets.strip
10.times{|d|
  if n.index(d.to_s * 3)
    puts "Yes"
    exit
  end
}
puts "No"
