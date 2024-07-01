N_MATCH, NUMBERS = gets.split(' ').map(&:to_i)
USABLE = gets.split(' ').map(&:to_i).sort.reverse
TABLE = [1000,2,5,5,4,5,6,3,7,6]

PRIORITY = USABLE.reduce({}){ |z, x| (z[TABLE[x]] ||= []) << x; z }.sort.to_h

@fst_cost = PRIORITY.first[0]
@fst_digit = PRIORITY.first[1][0]
digits = N_MATCH / @fst_cost
amari_cost = N_MATCH % @fst_cost
@res = @fst_digit.to_s * digits

if amari_cost == 0
  puts @res
  exit(0)
end

def dfs(amari, nums = [])
  return nil if (amari < 0)
  return nums if (amari == 0)
  res = nil
  PRIORITY.each do |num, v|
    res ||= dfs(amari - num, nums.clone << v[0])
  end
  res
end

amariyou = nil
denomi = 0
while !(amariyou = dfs(amari_cost))
  amari_cost += @fst_cost
  denomi += 1
end
@res.slice!(0, denomi)

lg = amariyou.select { |v| v > @fst_digit }.sort.reverse.map(&:to_s).join
sm = amariyou.select { |v| v < @fst_digit }.sort.reverse.map(&:to_s).join

puts lg + @res + sm
