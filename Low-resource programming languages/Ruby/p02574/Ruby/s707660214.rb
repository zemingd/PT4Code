require 'prime'
N = gets.to_i
A = gets.split.map(&:to_i)
pw = nil
f = {}
A.each do |a|
  a.prime_division.each do |pp,e|
    pw ||= f[pp]
    f[pp]||=0
    f[pp]+=1
  end
end
puts !pw ? 'pairwise coprime' : 
     f.each_value.max == N ? 'not coprime' : 'setwise coprime' 
