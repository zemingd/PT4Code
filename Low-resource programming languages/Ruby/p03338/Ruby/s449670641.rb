n=gets.chomp.to_i
s=gets.chomp.split("").map { |e| e.to_s }

max = 0

(n-1).times do |i|
  sl = s.slice(0..i).uniq
  sr = s.slice(i+1..n-1).uniq
  leng = sl.length
  count = 0

  leng.times do |j|
    if sr.include?(sl[j])
      count += 1
    end
  end


 max = max > count ? max : count

end

puts max
