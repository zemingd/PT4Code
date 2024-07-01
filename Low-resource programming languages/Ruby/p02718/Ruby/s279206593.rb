ALP = ('a'..'z').to_a
INF = 0xffffffffffffffff
# mod = 998244353
# mod = 10 ** 9 + 9
mod = 10 ** 9 + 7
PI = Math::PI
dx = [ 1,  0, -1,  0,  1,  1, -1, -1]
dy = [ 0,  1,  0, -1,  1, -1,  1, -1]
eight = [0, 1, 1, 0, -1, -1, 1, -1, 0]
def max(a,b);       a > b ? a : b                              end
def min(a,b);       a < b ?  a : b                             end
def swap(a,b);      a, b = b, a                                end
def gi;             gets.to_i                                  end
def gf;             gets.to_f                                  end
def gs;             gets.chomp                                 end
def gmi(n=nil); n.nil? ? gets.split.map(&:to_i) : n.times.map{ gets.to_i } end
def gmf(n=nil); n.nil? ? gets.split.map(&:to_f) : n.times.map{ gets.to_f } end
def gms(n=nil); n.nil? ? gets.split : n.times.map{ gets.chomp } end
def ga2(h);        h.times.map{ gets.split.map(&:to_i) }      end
def gm(h);        h.times.map{ gets.chomp }      end
def yn(f); puts f ? "Yes" : "No" end
def YN(f); puts f ? "YES" : "NO" end
def yes(f=nil); f.nil? ? (puts "Yes"; exit) : (puts f ? "Yes" : "No") end
def no(f=nil); f.nil? ? (puts "No"; exit) : (puts f ? "Yes" : "No") end
def yay(f=nil); f.nil? ? (puts "Yay!"; exit) : (puts f ? "Yay!" : ":(") end

n,m = gmi
a = gmi.sort.reverse
s = a.inject(:+)
yn( a[m-1] >= (1.0  * s ) / (4.0 * m)  )