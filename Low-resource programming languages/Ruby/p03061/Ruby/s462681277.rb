n = gets.to_i
as = gets.split.map(&:to_i)

ls = Array.new(n+2, 0)
rs = Array.new(n+2, 0)

1.upto(n) do |i|
  ls[i] = ls[i-1].gcd(as[i-1])
end
n.downto(1) do |i|
  rs[i] = rs[i+1].gcd(as[i-1])
end

result = rs.map.with_index do |r, i|
  case i
  when 0, 1 then 1
  when 2 then r
  when rs.size-1 then ls[i-2]
  else
    r.gcd(ls[i-2])
  end
end.max
puts result
