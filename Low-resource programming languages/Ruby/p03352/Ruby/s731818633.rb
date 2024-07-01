n = gets.to_i
i = 0
n.times{|i|
  if Math::sqrt(n-i).to_i == Math::sqrt(n-i)
    puts n-i
    break
  end
  i += 1
  }
