require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
n,k = gets.chomp.split.map(&:to_i)
v = gets.chomp.split.map(&:to_i)

ans = 0
(k+1).times do |l|
  (k-l+1).times do |r|
    deletable_count = (k-l-r)
    ar = v.slice(0,l) + v.slice(n-r,r)
    ar.sort!
    deletable_count.times do |i|
      break if ar[i].nil? or ar[i] >= 0
      ar.shift
    end
    sum = ar.inject(&:+) || 0
    # p [l,r,deletable_count, ' ', sum]
    ans = sum if ans < sum
  end
end

puts ans