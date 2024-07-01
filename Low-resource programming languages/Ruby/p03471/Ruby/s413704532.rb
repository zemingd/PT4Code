array = gets.chomp.split(" ").map(&:to_i)

N = array[0]
Y = array[1]

a = 0 
b = 0 

N.times{|i|
  N.times{|j|
    if(9*i + 4*j == Y/1000 - N)
      a = i 
      b = j 
    end
  }
}

c = N - (a+b)

if c < 0
  a = -1
  b = -1
  c = -1
end

puts("#{a} #{b} #{c}")