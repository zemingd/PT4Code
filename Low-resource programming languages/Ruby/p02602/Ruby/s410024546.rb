require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
n,k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

ten = 1
k.times do |i|
  ten *= a[i]
end

prev = ten
k.upto(n-1) do |i|
  ten /= a[i - k]
  ten *= a[i]

  # p [ten, a[i-1]]
  if ten > prev
    puts 'Yes'
  else
    puts 'No'
  end
  prev = ten
end

