N, K = gets.split(' ').map(&:to_i)

if N > K
  range = [*(1..K - 1)]
  rest = [*(K..N)]
else 
  range = [*(1..N)]
  rest = nil
end 

a = range.map{|number1| [*(1..10**5)].bsearch{|number2| 2**number2 > (K / number1).to_i}}
p a

probability = a.map{|a_e| 1/N.to_f * 1/2.to_f**a_e}

if rest.nil?
  puts probability.sum
else
  puts probability.sum + 1/N.to_f * rest.count
end 