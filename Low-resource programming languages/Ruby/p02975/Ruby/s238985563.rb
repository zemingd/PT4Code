N=gets.chomp.to_i
a = gets.chomp.split(' ').map{|n| n.to_i}

jous=[1,
 2,
 4,
 8,
 16,
 32,
 64,
 128,
 256,
 512,
 1024,
 2048,
 4096,
 8192,
 16384,
 32768,
 65536,
 131072,
 262144,
 524288,
 1048576,
 2097152,
 4194304,
 8388608,
 16777216,
 33554432,
 67108864,
 134217728,
 268435456,
 536870912,
 1073741824,
 2147483648,
 4294967296].reverse

a.sort!{|a,b| b<=>a}
answer = "Yes"

jous.each do |j|
  if a[0] >= j
    if a.map{|num| num&j}.reject{|num| num.zero?}.count%2 !=0
      answer = "No"
    end
  end
end

puts answer