require 'prime'
require 'set'
require 'tsort'
include Math
ALP = ('a'..'z').to_a
INF = 0xffffffffffffffff
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
def pr?(num);              Prime.prime?(num)                          end
def digit(num);            num.to_s.length                            end
def array(s,ini=nil);      Array.new(s){ini}                          end
def darray(s1,s2,ini=nil); Array.new(s1){Array.new(s2){ini}}          end
def rep(num);              num.times{|i|yield(i)}                     end
def repl(st,en,n=1);       st.step(en,n){|i|yield(i)}                 end
N,C = gi
size = 2*10**5+2
sum = array size, 0
s = []
t = []
c = []
rep N do |i|
  ts,tt,tc = gi
  s << ts
  t << tt
  c << tc
end

repl 1, C do |i|
  tmp = array size, 0
  rep N do |j|
    if c[j] == i
      tmp[2*s[j] - 1]+=1
      tmp[2*t[j] - 1]-=1
    end
  end
  repl 1, size-1 do |j|
    tmp[i] += tmp[j - 1]
  end
  rep size do |j|
    sum[j]+= 1 if tmp[j] > 0
  end
end

puts sum.max+1
