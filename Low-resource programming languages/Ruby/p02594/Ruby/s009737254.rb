def gs() gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end
def debug(k,v) puts "#{k}: #{v}" end
def desc(ar) ar.sort!{|x,y|y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end

#$stdin = File.open('input.txt')
puts gi>=30 ? 'Yes' : 'No'
