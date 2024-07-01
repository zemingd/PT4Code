a,b=gets.split.map(&:to_i)
(puts "IMPOSSIBLE";exit)if (a+b).odd?
(a>b)?c=(a-b)/2+b:c=(b-a)/2+a
puts c