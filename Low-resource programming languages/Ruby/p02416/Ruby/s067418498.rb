while (n = gets.to_i) != 0
  c = 0
  while n > 0
    c += n%10
    n /= 10
  end
  puts c
end

