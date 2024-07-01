X = gets.to_i
m = {}
100.times do |a|
  a5 = a**5
  m[a5] = a;
end
100.times do |a|
  a5 = a**5
  b5 = X - a5
  if b5 >= 0
    if m[b5]
      puts "#{a} #{-m[b5]}"
      break
    end
  else
    if m[-b5]
      puts "#{a} #{m[b5]}"
      break
    end
  end
end
