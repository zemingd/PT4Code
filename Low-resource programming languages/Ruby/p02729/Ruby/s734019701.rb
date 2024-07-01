N, M = gets.strip.split.map(&:to_i)

def fact(n)
  n.times.map { |i| i + 1 }.inject(:*)
end

def combi(n)
  if n > 2
    fact(n) / (fact(n - 2) * fact(2))
  elsif n.eql?(2)
    1
  else
    0
  end
end

puts combi(N) + combi(M)
