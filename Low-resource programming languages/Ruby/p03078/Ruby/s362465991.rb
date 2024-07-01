xx, yy, zz, kk = gets.split.map(&:to_i)
aa = gets.split.map(&:to_i).sort{|a,b|b<=>a}.to_a
bb = gets.split.map(&:to_i).sort{|a,b|b<=>a}.to_a
cc = gets.split.map(&:to_i).sort{|a,b|b<=>a}.to_a

ab = Array.new
xx.times do |i|
  yy.times do |j|
    ab<<aa[i]+bb[j]
  end
end
ab_size = [ab.size, kk].min
ab = ab.sort!{|a,b|b<=>a}.to_a[0..ab_size-1]

abc = Array.new
ab_size.times do |i|
  yy.times do |j|
    abc<<ab[i]+cc[j]
  end
end

abc_size = [abc.size, kk].min
abc = abc.sort!{|a,b|b<=>a}.to_a[0..abc_size-1]
puts abc