gets.to_i
ary = gets.chomp.split(' ').map(&:to_i)
ans = 0
ary.each do |a|
  temp = a
  while true
    if a%2==1
      break
    end
    ans += 1
    a/=2
  end
end
puts ans