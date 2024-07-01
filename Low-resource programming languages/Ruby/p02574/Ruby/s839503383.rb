require "prime"

N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

prime_div = A.map{|a| Prime.prime_division(a).map{|e| e[0]}}

if (prime_div.inject(&:&) == [])
  pairwise_coprime = true
else
  pairwise_coprime = false
end

setwise_coprime = false
tmp = {}
begin
prime_div.each{ |a|
  a.each{ |b|
    if tmp[b]
      setwise_coprime = true
      raise
    end
    tmp[b] = true
  }
}
rescue
end

if pairwise_coprime
  if setwise_coprime
    puts "setwise coprime"
  else
    puts "pairwise coprime"
  end
else
  puts "not coprime"
end
