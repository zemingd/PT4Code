N,M = gets.chomp.split(" ").map(&:to_i)
I = []
for i in 1..M
  a,b = gets.chomp.split(" ").map(&:to_i)
  I.push(a,b)
end

P = []
for i in 1..N
  num = I.count(i)
  P.push(num)
end

P.each do |n|
  print("#{n}\n")
end