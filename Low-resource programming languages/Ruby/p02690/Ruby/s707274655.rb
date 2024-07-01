require 'prime'

X = gets.to_i
def calc(x, y) x**5 - y**5 end

ans = [0, 0]
wk = Prime.prime_division(X)
wk << [1, 1]
wk.each{|k, v|
  (-k..k).each{|i|
    if calc(i, i-k) == X then
      ans = [i, i-k]
      break
    end
  }
  break if ans != [0, 0]
}

puts ans*?\s
