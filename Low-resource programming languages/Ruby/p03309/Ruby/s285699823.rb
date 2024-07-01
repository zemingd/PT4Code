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


n=gif
a=gi

rep n do |i|
  a[i] -= i+1
end
a.sort!

pa = a.find_all{|aa| aa >= 0 }

if pa
  left = 0
  right = pa.size-1
  pmn = a.map{|aa|aa.abs}.inject(:+)

  rep 1000 do
    mid = (left+right)/2
    tmn = a.map{|aa| (aa-pa[mid]).abs }.inject(:+)
    if tmn < pmn
      pmn = tmn
      left = mid
    else
      right = mid
    end
  end
end

na = a.find_all{|aa| aa <= 0 }
if na
  left = 0
  right = na.size-1
  nmn = a.map{|aa|aa.abs}.inject(:+)

  rep 1000 do
    mid = (left+right)/2
    tmn = a.map{|aa| (aa-na[mid]).abs }.inject(:+)
    if tmn < nmn
      nmn = tmn
      left = mid
    else
      right = mid
    end
  end
end
puts min pmn,nmn
