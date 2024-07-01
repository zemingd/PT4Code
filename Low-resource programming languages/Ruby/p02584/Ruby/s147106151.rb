x, k, d = gets.chomp.split(' ').map(&:to_i)

(0...k).each{
  if(x > 0)
    x = x - d
  else
    x = x + d
  end
}

puts x.abs
