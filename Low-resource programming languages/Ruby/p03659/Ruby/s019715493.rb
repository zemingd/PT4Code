gets
a = gets.chomp.split(' ').map(&:to_i)
total = a.inject(&:+)

sunuke = 0
kuma = total
diff = 2*(10**5)

a.each do |i|
  sunuke += i
  kuma -= i
  d = (sunuke - kuma).abs

  if(diff < d)
    puts diff
    break
  else
     diff = d
  end
end
