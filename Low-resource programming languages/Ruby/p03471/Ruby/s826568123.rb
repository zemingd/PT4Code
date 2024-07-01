n,y = gets.to_i
a = 0
while a * 10000 <= n
  b = 0
  while b * 5000 + a * 10000 <= n
    c = (n - (a * 10000 + b * 5000)) / 1000
    if ( a + b + c == y && a * 10000 + b * 5000 + c * 1000 == n)
      puts "#{a} #{b} #{c}"
      exit
    end
    b += 1
  end
  a += 1
end
puts "-1 -1 -1"