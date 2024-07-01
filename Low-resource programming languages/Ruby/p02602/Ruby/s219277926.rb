def gs() gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end
def debug(k,v) puts "#{k}: #{v}" end
def desc(ar) ar.sort!{|x,y|y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end


n,k = gsmi #10**5
as = gsmi

l = 0
(k...n).each do |r|
  puts (as[l]<as[r]) ? 'Yes' : 'No'
  l = l+1
end
