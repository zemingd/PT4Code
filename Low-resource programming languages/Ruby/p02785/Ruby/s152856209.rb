n, k = gets.chomp.split(' ').map{|i| i.to_i }
h = gets.chomp.split(' ').map{|i| i.to_i }.sort

amari = h.length - k

if amari <= 0
  puts 0
else
  h2 = h[0 .. amari - 1]
  sum = 0
  h2.each{|i| sum += i }

  puts sum
end
