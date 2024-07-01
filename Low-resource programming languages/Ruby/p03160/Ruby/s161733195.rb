def gs() gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end
def ang(n) Array.new(n){gsmi} end
def debug(k,v) puts "#{k}: #{v}" end
def desc(ar) ar.sort!{|x,y|y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end

$stdin = File.open('input.txt') if File.exist?('input.txt')
n = gi
hs =gsmi

ans = Array.new(n)
ans[0..1] = [0,(hs[1]-hs[0]).abs]
(2...n).each do |i|
  ans[i] = [i-1,i-2].map{ |e| ans[e]+(hs[e]-hs[i]).abs }.min
end if n!=2

puts ans[n-1]
