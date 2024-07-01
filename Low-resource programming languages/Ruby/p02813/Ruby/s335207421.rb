def factorial(number)
  number = 0 if number.nil?
  (1..number).inject(1,:*)
end

n = gets.to_i
P = gets.chomp.split(" ").map(&:to_i);
Q = gets.chomp.split(" ").map(&:to_i);
na = [*1..n]
nb = [*1..n]

a=0
b=0
for i in 0..(n-1)
    fc=factorial(n-i-1)
    
    a = a + (na.index(P[i])+1) * fc
    na.delete(P[i])
    b = b + (nb.index(Q[i])+1) * fc
    nb.delete(Q[i])
end

p (a-b).abs