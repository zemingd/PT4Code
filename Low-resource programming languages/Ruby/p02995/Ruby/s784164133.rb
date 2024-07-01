A, B, C, D = gets.split.map(&:to_i)
def calc(x)
    x - x/C - x/D + x/C.lcm(D)
end
puts calc(B) - calc(A-1)