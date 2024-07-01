a,b = gets.split.map(&:to_i)
p (a+b).even? ? (a+b)/2 : 'IMPOSSIBLE'  