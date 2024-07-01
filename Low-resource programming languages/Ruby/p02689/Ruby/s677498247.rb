n,m = gets.chomp.split(" ").map(&:to_i)
h = gets.chomp.split(" ").map(&:to_i)
abs = m.times.map{ gets.chomp.split(" ").map(&:to_i) }
c = Array.new(n,0)

abs.map{|ab|
  if h[ab[0]-1] < h[ab[1]-1]  
    c[ab[0]-1]+= 1 
  elsif h[ab[0]-1] > h[ab[1]-1] 
    c[ab[1]-1]+= 1 
  else
    c[ab[0]-1]+= 1
    c[ab[1]-1]+= 1 
  end
}

puts c.count(0)