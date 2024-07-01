n,m = gets.split(" ").map(&:to_i)
as = gets.split(" ").map(&:to_i)
as1 = as[1..-1]

(n-1).times do
    asn = gets.split(" ").map(&:to_i)
    as1 = as1 & asn[1..-1]
end
puts as1.count