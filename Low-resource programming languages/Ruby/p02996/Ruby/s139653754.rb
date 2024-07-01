n = gets.to_i
ab = []
n.times { |i|
  ab << gets.split.map {|x| x.to_i}
}

ab.sort! {|a,b| a[1] <=> b[1]}

s = 0
ab.each { |v|
  s += v[0]
  if s > v[1]
    puts "No"
    exit
  end
}
puts "Yes"

