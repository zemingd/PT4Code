a,b = gets.chomp.split(" ").map(&:to_i)
n2 = b *10 
n2.upto(n2+9){|n|
  if (n * 0.08).to_i == a and (n*0.1).to_i == b
    puts n
    exit
  end
  }
puts "-1"