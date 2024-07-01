n = gets.to_i

def divisor(m)
    hoge = 0
    (1..m).each{ |i| hoge+=1 if(m % i == 0) }
    return hoge
end

count = 0
fuga = (105..n).select(&:odd?)
fuga.each{ |e| count+=1 if divisor(n) == 8 } if(n>=105)

puts count