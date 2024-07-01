require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
n,k = gets.chomp.split.map(&:to_i)
v = gets.chomp.split.map(&:to_i)

ans = 0
([k+1,n+1].min).times do |l|
  ([k-l+1,n+1].min).times do |r|
    deletable_count = (k-l-r)
    ar = l+r >= n ? v.dup : v.slice(0,l) + v.slice(n-r,r)
    ar.sort!
    [deletable_count, ar.size].min.times do |i|
      break if ar[i].nil? || ar[i] >= 0
      ar[i] = 0
    end
    sum = ar.inject(&:+) || 0
    # p [l,r,deletable_count, ' ', sum]
    ans = sum if ans < sum
  end
end

puts ans
