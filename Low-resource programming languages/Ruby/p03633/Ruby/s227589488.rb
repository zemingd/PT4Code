n = gets.chomp.to_i
input = []
n.times do 
  input.push(gets.to_i)
end

def gcd (n,m)
  return 1 if n == 0 || m == 0
  while n != 0 && m != 0 do
    if n < m 
      m = m % n
    else 
      n = n % m 
    end
  end
  return n < m ? m : n
end

def lcm (n,m)
  n * m / gcd(n,m)
end

g = lcm(input[0],input[1])
1.upto(n-2) do |i|
  g = lcm(input[i],input[i+1])
end
puts g