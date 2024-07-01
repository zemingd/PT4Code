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
now = as[0...k].inject(:*)
before = now
(k...n).each do |r|
  now = now/as[l]*as[r]
  l,r = l+1,r+1
  puts (before<now) ? 'Yes' : 'No'
  before = now
end
