def gs() gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end

def desc(ar) ar.sort!{|x,y|y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end

n = gi
c = [0,0,0,0]

n.times do
  s = gs
  if s=="AC"
    c[0]+=1
  elsif s=="WA"
    c[1]+=1
  elsif s=="TLE"
    c[2]+=1
  elsif s=="RE"
    c[3]+=1
  end
end

puts "AC x #{c[0]}"
puts "WA x #{c[1]}"
puts "TLE x #{c[2]}"
puts "RE x #{c[3]}"
