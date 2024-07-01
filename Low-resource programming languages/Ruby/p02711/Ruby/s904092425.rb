class Array
  def diff; (size-1).times.map { |i| self[i + 1] - self[i] }.to_a end
end
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

def an(n,d=0) Array.new(n,d)end
def an2(n,m,d=0) Array.new(n){an(m,d)}end
def an3(n,m,l,d=0) Array.new(n){an2(m,l,d)}end
def zeros(n); an2(n,n) end
def eye(n); an2(n,n).each_with_index{|e,i|e[i]=1} end # 単位行列 identity matrix
# n = gets.to_s.to_i
# a = gets.to_s.split.map{|t|t.to_i}
# s = gets.to_s.chomp
# m = Array.new(n){ gets.split.map{|t|t.to_i} }

# n = gets.to_s.to_i
s = gets.to_s.chomp
# a = gets.to_s.split.map{|i|i.to_i}

yn s.include?("7")

# puts ans




