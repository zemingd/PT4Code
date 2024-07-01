def gs() STDIN.gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end
 
def desc(ar) ar.sort!{|x,y|y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end

n,x = gsmi
xs = gsmi

subs = Array.new(n){|i| (xs[i]-x).abs }

def gcd(x,y)
    while y!=0
      x,y=y,x%y
		end
    return x
end

puts subs.inject(subs[0]){|ret,n| gcd(ret,n) }