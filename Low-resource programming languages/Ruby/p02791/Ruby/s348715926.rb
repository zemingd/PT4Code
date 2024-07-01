N = gets.to_i
P=gets.chomp.split(' ').map{|n| n.to_i}
count = 0

P.each_with_index{|i, idx|
  bool = true
  0.upto(idx) do |num|
    if P[num] >= i then
      next
    else
      bool = false
    end
  end
  if bool 
    count = count + 1
  end
}

puts count