require 'prime'
require 'set'
require 'tsort'
include Math
def max(a,b);              a > b ? a : b                              end
def min(a,b);              a < b ?  a : b                             end
def swap(a,b);             a, b = b, a                                end
def gif;                   gets.to_i                                  end
def gff;                   gets.to_f                                  end
def gsf;                   gets.chomp                                 end
def gi;                    gets.split.map(&:to_i)                     end
def gf;                    gets.split.map(&:to_f)                     end
def gs;                    gets.chomp.split.map(&:to_s)               end
def gc;                    gets.chomp.split('')                       end
def pr(num);               num.prime_division                         end
def digit(num);            num.to_s.length                            end
def array(s,ini=nil);      Array.new(s){ini}                          end
def darray(s1,s2,ini=nil); Array.new(s1){Array.new(s2){ini}}          end
def rep(num);              num.times{|i|yield(i)}                     end
def repl(st,en,n=1);       st.step(en,n){|i|yield(i)}                 end

l = array(8,0)
n = gif
a = gi
tmp = 0
a.each do |aa|
  if aa < 400
    l[0] += 1
  elsif aa < 800
    l[1] += 1
  elsif aa < 1200
    l[2] += 1
  elsif aa < 1600
    l[3]+=1
  elsif aa < 2000
    l[4]+=1
  elsif aa < 2400
    l[5] += 1
  elsif aa < 2800
    l[6] += 1
  elsif aa < 3200
    l[7] += 1
  else
    tmp += 1
  end
end

l.sort!
num = 0
rep 8 do |i|
num += 1 if l[i] != 0
end
max = num + tmp
min = num
if min == 0 && tmp > 0
  min = 1
end

puts min.to_s + " " + max.to_s

