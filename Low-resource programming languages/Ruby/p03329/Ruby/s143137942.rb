N = gets.to_i

def draw(amt, base)
  amt.to_s(base).split(//).map(&:to_i).inject(:+)
end

puts (0 .. N).map{|a| draw(a, 6) + draw(N - a, 9)}.min