N = gets.to_i
S = []
N.times do 
  S << gets.to_i
end

T = S.inject(:+)
ND = S.select{|x| x % 10 != 0}

if ND.size == 0
  puts 0
elsif T % 10 != 0
  puts T
else
  puts T - ND.min
end