x = gets.to_i

ans = 1
2.upto(x-1) do |i|
    j = 2
    j += 1 while i ** j <= x
    break if j == 2
    ans = i ** (j - 1) if ans < i ** (j - 1)
end

puts ans