A, B = gets.strip.split.map(&:to_i)

def divisors(n)
  if n.even?
    divisors = []
    (1..(n**0.5).to_i+1).each do |i|
      if n % i == 0
        if i > 2
          divisors.push i if i.odd?
          #if i != (n / i)
          #  divisors.push(n / i)
          #end
        else
          divisors.push i
        end
      end
    end
    divisors.sort
  else
    divisors = []
    (1..(n**0.5).to_i+1).each do |i|
      if n % i == 0
        divisors.push i
        #if i != (n / i)
        #  divisors.push(n / i)
        #end
      end
    end
    divisors.sort
  end
end

a_divisors = divisors(A)
b_divisors = divisors(B)
# 公約数のリスト
shared_divisors = a_divisors & b_divisors

if shared_divisors == [1]
  puts "1"
  exit
end

bad_divisors = []

i = 0
i_max = shared_divisors.length-2
j_max = shared_divisors.length-1

while i <= i_max
  j = i + 1
  while j <= j_max
    if shared_divisors[i].gcd(shared_divisors[j]) > 1
      bad_divisors.push shared_divisors[j]
    end
    j += 1
  end
  i += 1
end
p shared_divisors if $DEBUG
p bad_divisors if $DEBUG
puts (shared_divisors - bad_divisors).length