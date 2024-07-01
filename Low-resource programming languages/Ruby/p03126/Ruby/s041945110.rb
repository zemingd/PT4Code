n, m =gets.split(" ").map(&:to_i)

list = []
n.times do 
 a, *b = gets.split(" ").map(&:to_i)
 list.push(b)
end
list = list.flatten

sum = 0
(1..m).map{ |t| sum += 1 if list.count(t) == n}
p sum