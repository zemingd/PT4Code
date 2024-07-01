MOD = 1000000007
N, M = gets.split.map(&:to_i)
a = []
c = []
c[0] = 1
M.times do |i|
  a[i] = gets.to_i
end

i=0
1.upto N do |j|
  if a[i] == j
    c[j] = 0
    i += 1
  else
    if j == 1
      c[j] = 1
    else
      c[j] = (c[j-1] + c[j-2]) % MOD
    end
  end
  if c[j] == 0 and c[j-1] == 0
    # puts "#{c}"
    puts 0
    exit
  end
end

# puts "#{c}"
puts c[N]