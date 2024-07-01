k=gets.to_i
a,b=gets.split(' ').map(&:to_i)
(a..b).each do |i|
  if i%k==0
    puts "OK"
    return
  end
end
puts "NG"
