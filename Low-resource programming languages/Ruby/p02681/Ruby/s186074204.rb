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
def gi;             gets.to_s.to_i                             end
def gf;             gets.to_s.to_f                             end
def gs;             gets.to_s.chomp                            end
def gmi(n=nil); n.nil? ? gets.to_s.split.map{|t|t.to_i} : n.times.map{ gets.to_s.to_i } end
def gmf(n=nil); n.nil? ? gets.to_s.split.map{|t|t.to_f} : n.times.map{ gets.to_s.to_f } end
def gms(n=nil); n.nil? ? gets.to_s.split : n.times.map{ gets.to_s.chomp } end
def ga2i(h);        h.times.map{ gets.to_s.split.map{|t|t.to_i} }      end
def gm(h);        Array.new(h){ gets.to_s.split.map{|t|t.to_i} }      end
def yn(f); puts f ? "Yes" : "No" end
#def YN(f); puts f ? "YES" : "NO" end
def yes(f=nil); f.nil? ? (puts "Yes"; exit) : (puts f ? "Yes" : "No") end
def no(f=nil); f.nil? ? (puts "No"; exit) : (puts f ? "Yes" : "No") end
def yay(f=nil); f.nil? ? (puts "Yay!"; exit) : (puts f ? "Yay!" : ":(") end

#n = gets.to_s.to_i
#a = gets.to_s.split.map{|e|e.to_i}
#m = Array.new(n){ gets.to_s.split.map{|e|e.to_i} }
s = gets.to_s.chomp
t = gets.to_s.chomp

yn(s == t[0, s.size])
  




