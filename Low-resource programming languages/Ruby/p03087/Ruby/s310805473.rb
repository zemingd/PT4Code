N, Q = gets.chomp().split(" ").map(&:to_i)
S = gets.chomp()
count = Arry.new(N)

Q.times do 
  l, r = gets.chomp().split(" ").map(&:to_i)
  partial_S = S.slice(l-1..r-1)
  count.push(partial_S.scan("AC").length)
end
puts count