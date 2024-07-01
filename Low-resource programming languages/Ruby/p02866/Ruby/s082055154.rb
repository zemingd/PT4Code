N = gets.to_i
D = gets.split.map(&:to_i).sort!.slice_when{|a,b|a!=b}.to_a.map{|v|[v[0],v.size]}
MOD = 998244353

count = 1
pre = 1
D.each_with_index do |(a,b), i|
  if a != i
    puts 0
    exit
  end

  if a == 0
    if b != 1
      puts 0
      exit
    else
      next
    end
  end

  b.times do
    count *= pre
    count %= MOD
  end

  pre = b
end

puts count
