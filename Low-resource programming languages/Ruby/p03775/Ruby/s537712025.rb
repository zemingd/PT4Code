require 'prime'
N = gets.chomp.to_i
a = N.prime_division
divisors =[1] # 約数
a.each do |ary|
  ary[1].times do |n|
    divisors << ary[0]
  end
end
F_all = []
1.upto(divisors.size()-1) do |num|
  ones = divisors.combination(num).to_a.uniq()
  ones.each do |one|
    other = divisors.dup
    one.each do |data|
      other.delete_at(other.index(data))
    end
#    print("片方：#{one}, 残り：#{other}\n")
#    print("片方桁数: #{one.inject(:*).to_s.split("").size()}, ")
#    print("残り桁数: #{other.inject(:*).to_s.split("").size()}\n\n")
    F_all << [one.inject(:*).to_s.split("").size(), other.inject(:*).to_s.split("").size()].max
  end
end
print("#{F_all.min}")
