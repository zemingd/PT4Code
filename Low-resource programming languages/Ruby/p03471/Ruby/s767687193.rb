Y,N = gets.split.map(&:to_i)
a = 0
while a * 10000 <= N
  b = 0
  while b * 5000 + a * 10000 <= N
    c = (N - (a * 10000 + b * 5000)) / 1000
    if(a+b+c==Y&&a*10000+b*5000+c*1000==N)
      puts "#{a} #{b} #{c}"
      exit
    end
    b += 1
  end
  a += 1
end
puts "-1 -1 -1"