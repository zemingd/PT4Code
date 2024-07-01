N, M = gets.split.map(&:to_i)
a = (1..M).map { gets.to_i - 1 }

NOT_YET = -1
MOD = 1000000007

if N == 1 then
  puts 1
  exit
end

ways = Array.new(N, NOT_YET)
a.each { |hole| ways[hole] = 0 }

if ways[0] == NOT_YET then ways[0] = 1 end
if ways[1] == NOT_YET then ways[1] = 1 + ways[0] end

(2...N).each { |x| ways[x] = (ways[x - 1] + ways[x - 2]) % MOD if ways[x] == NOT_YET }

puts ways.last
  
