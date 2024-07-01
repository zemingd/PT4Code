N = gets.to_i
A = gets.split.take(N).map(&:to_i)

a = [0] * 8
A.each{|n|
  a[[n / 400, 7].min] = 1
}
sum = a.inject(0, :+)
top = A.count{|n| n >= 3200 }
min = [sum, top].max
# max = [sum + top, 8].min
max = sum + top
puts "#{min} #{max}"
