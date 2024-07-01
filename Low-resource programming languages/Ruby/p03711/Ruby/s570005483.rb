require 'date'
def f(a)
  a += 1
  a = 1 if a > 12
  (Date.new(0, a, 1)-1).day
end
a, b = gets.split.map &:to_i
puts (f(a)==f(b) ? "Yes" : "No")