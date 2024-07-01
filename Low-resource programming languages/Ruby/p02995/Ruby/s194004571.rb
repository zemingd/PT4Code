A, B, C, D = gets.split.map(&:to_i)
#x/C.lcm(D) = (x==9の時)9
#数学力?
def calc(x)
    x - x/C - x/D + x/C.lcm(D)
end
#求める解はBまでの解からA-1までの解を引いたもの;
puts calc(B) - calc(A-1)