N, M = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)

def is_half_lcm(ary)
  if ary.all?{|a| a.odd?} then
    true
  elsif ary.all?{|a| a.even?} then
    is_half_lcm(ary.map{|a| a / 2})
  else
    false
  end
end

if is_half_lcm(A.map{|a| a / 2}) then
  hlcm = 1
  A.each{|a|
    hlcm = hlcm.lcm(a / 2)
    break if hlcm > M
  }
  puts hlcm > M ? 0 : (((M - hlcm) / (2 * hlcm)) + 1)
else
  puts 0
end
