a,b = gets.chomp.split(" ").map(&:to_i)
n1 = (a / 0.08).ceil
n2 = (b / 0.1).floor
n1.upto(n2){|n|
  if (n * 0.08).to_i == a and (n*0.1).to_i == b
    puts n
    exit
  end
  }
puts "-1"