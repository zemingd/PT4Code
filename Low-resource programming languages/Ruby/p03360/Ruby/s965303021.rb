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

def f k,a,b,c
  return a+b+c if $k==k
  return [f(k+1,a*2,b,c),f(k+1,a,b*2,c),f(k+1,a,b,c*2)].max
end

a,b,c=gi
$k=gif
puts f 0,a,b,c

