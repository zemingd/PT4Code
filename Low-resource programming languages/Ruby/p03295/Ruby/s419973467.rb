def gs() gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end

def desc(ar) ar.sort!{|x,y|y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end

#$stdin = File.open('input.txt')
n,m = gsmi
to = Array.new(n){ n }
m.times do
  a,b = gsmi
  to[a-1] = min(to[a-1],b-1)
end

ans,now = 0,0
while now<n
  now = to[now..-1].min
  ans += 1
end

puts ans-1
