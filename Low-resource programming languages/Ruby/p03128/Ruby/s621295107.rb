N_MATCH, NUMBERS = gets.split(' ').map(&:to_i)
USABLE = gets.split(' ').map(&:to_i).sort.reverse
TABLE = [1000,2,5,5,4,5,6,3,7,6]

PRIORITY = USABLE.reduce({}){ |z, x| (z[TABLE[x]] ||= []) << x; z }.sort.to_h

# p PRIORITY

@fst_cost = PRIORITY.first[0]
@fst_digit = PRIORITY.first[1][0]
digits = N_MATCH / @fst_cost
@amari_cost = N_MATCH % @fst_cost
@res = @fst_digit.to_s * digits
# p digits
# p "amari cost", @amari_cost
# p @res

cand_map = PRIORITY.select{|k, v| k <= @amari_cost}
p cand_map
if !cand_map.empty?
  to_add = cand_map.first
  @amari_cost -= to_add[0]
  if to_add[1][0] > @fst_digit
    @res = to_add.to_s + @res
  else
    @res += to_add.to_s
  end
end

# p PRIORITY
while @amari_cost > 0
  filtered = PRIORITY.select do |k, v| 
    ((k - @fst_cost) <= @amari_cost) && !v.select{ |value| value > @fst_digit }.empty?
  end

  if filtered.empty?
    break
  else
    @amari_cost -= filtered.first[0]
    @res.slice!(0, 1)
    @res.insert(0, filtered.first[1][0].to_s)
  end
end

puts @res
