n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i);

ans = a.inject(0){|r, i|
  t = 0
  while(i.even?)
    i /= 2
    t += 1
  end
  r + t
}

print("#{ans}")
