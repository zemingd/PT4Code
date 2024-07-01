require 'pp'

n, y = ARGF.gets.split(" ").map(&:to_i)
y /= 1000

if (y-n) < 0
  puts "-1 -1 -1"
  exit
end

a = -1
loop do
  a += 1

  b = (y-n-9*a)
  if b % 4 != 0 
    next
  end

  if b < 0
    puts "-1 -1 -1"
    exit
  end

  b/=4

  c = n - (a+b)
  if c >= 0
    puts "#{a} #{b} #{c}"
    exit
  end
end
