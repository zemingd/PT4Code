N = gets.to_i
D = gets.chomp.split(" ").map(&:to_i)

countD = Array.new(D.max + 1, 0)

D.each{|d|
  countD[d] += 1
}

if countD[0] != 1 then
  puts 0
else
  ans = (1...countD.length).inject(1){|times, i|
    times * countD[i-1] ** countD[i]
  }
  puts ans % 998244353
end
