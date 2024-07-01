def gs() gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end

def desc(ar) ar.sort!{|x,y|y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end

s = gs
k = gi

d = 5*10**15
s.length.times do |i|
  n = s[i].to_i
  if k<=n**d
    puts n
    exit
  else
    k-=n**d
  end

end
