A, B = gets.split.map(&:to_i)

ans = -1
1.upto 1000 do |n|
  pa = (n*0.08).floor
  pb = (n*0.10).floor

  if pa == A and pb == B
    ans = n
    break
  end
end

puts ans
