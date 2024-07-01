require 'prime'

X = gets.to_i

def calc(x, y) x**5 - y**5 end

def divisors(n)
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end

ans = [0, 0]
divisors(X).each{|n|
  (0..120).each{|i|
    wk = calc(i, i-n)
    if wk == X then
      ans = [i, i-n]
      break
    end
  }
  break if ans != [0, 0]
}

puts ans*?\s
