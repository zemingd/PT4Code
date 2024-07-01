require "pry"
n = gets.chomp
len = n.length

kouho_1 = Array.new(len,0).map.with_index{|n,i| i % 2 == 0? n = 1 : n = 0}
kouho_2 = Array.new(len,0).map.with_index{|n,i| i % 2 == 0? n = 0 : n = 1}

diff1 = 0
diff2 = 0

kouho_1.each_with_index do |a,i|
  if a.to_s != n[i]
    diff1 += 1
  end
end

kouho_2.each_with_index do |a,i|
  if a.to_s != n[i]
    diff2 += 1
  end
end

puts diff1 >= diff2 ? diff2 : diff1
