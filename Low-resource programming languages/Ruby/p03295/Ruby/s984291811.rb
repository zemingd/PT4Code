def gs() gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end

def desc(ar) ar.sort!{|x,y|y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end

#$stdin = File.open('input.txt')
n,m = gsmi
abs = Array.new(m){ gsmi }

ans = []
abs.each do |a,b|
  flag = true
  for i in (0...ans.size)
    flag = false unless b<=ans[i][0] || ans[i][1]<=a
    if ans[i][0]<a && a<ans[i][1]
      ans[i][0] = a
    end
    if ans[i][0]<b && b<ans[i][1]
      ans[i][1] = b
    end
  end
  ans << [a,b] if flag
  #p [ans, flag,[a,b]]
end

puts ans.size
