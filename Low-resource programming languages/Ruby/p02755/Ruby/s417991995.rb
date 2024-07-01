require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
a,b = gets.chomp.split.map(&:to_i)

1.upto(100000) do |i|
  if (i * 0.08).to_i == a && (i * 0.1).to_i == b
    puts i
    exit
  end
end

puts -1
