def gs() gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end
def debug(k,v) puts "#{k}: #{v}" end
def desc(ar) ar.sort!{|x,y|y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end

#$stdin = File.open('input.txt')

n = gi # 10**5
as = gsmi

as.map!.with_index{|a,i| a-i-1 }.sort!
if n.odd?
  b = as[n/2]
else
  b = as[n/2-1]+((as[n/2]-as[n/2-1])*(as[n/2-1]-as[0])/(as[n/2-1]-as[0]+as[-1]-as[n/2]))
end
puts as.each_with_index.inject(0){|r,(a,i)| r+(a-b).abs }
