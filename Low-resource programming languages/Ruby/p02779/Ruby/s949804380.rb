n = gets.to_i
a = gets.split.map(&:to_i)

h = {}
a.each{|x|
  if h[x]
    puts "NO"
    exit
  end
  h[x] = x
}

puts "YES"