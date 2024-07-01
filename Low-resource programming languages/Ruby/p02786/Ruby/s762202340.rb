H = gets.to_i
def f(h) ; h<=1 ? 1 : 2 * f(h / 2) + 1; end 
puts f(H)
