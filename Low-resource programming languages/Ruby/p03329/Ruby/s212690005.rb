N = gets.to_i

def draw(amt, base)
  amt.to_s(base).split(//).map(&:to_i).inject(:+)
end

ans = N
(0 .. N).each{|a| t = draw(a, 6) + draw(N - a, 9); ans = t if t < ans}
puts ans