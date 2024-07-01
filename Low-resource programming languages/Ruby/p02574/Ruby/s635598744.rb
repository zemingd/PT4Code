require 'prime'
N = gets.to_i
A = gets.split.map(&:to_i)
pw = nil
ad,cd = 1,nil
A.each do |a|
  cd ||= a
  cd = a.gcd(cd)
  g = a.gcd(ad)
  pw ||= g > 1
  (a/g).prime_division.each do |pp,e|
    ad *= pp
  end
end
puts !pw ? 'pairwise coprime' : 
     cd == 1 ? 'setwise coprime' : 'not coprime'