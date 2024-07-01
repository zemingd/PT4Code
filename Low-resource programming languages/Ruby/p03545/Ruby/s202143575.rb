IN = gets.chomp

(0..(1 << 3) - 1).each do |bit|
  tmp = IN.clone
  (0..2).each do |i|
    if (bit >> i) & 1 == 1
      tmp.insert(3 - i, '+')
    else
      tmp.insert(3 - i, '-')
    end
  end
  if eval(tmp) == 7
    puts tmp + '=7'
    break
  end
end