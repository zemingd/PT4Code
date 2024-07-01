input = readlines()
n = input.shift.chomp.to_i

r_hash = {}
(1..n).each do |x|
  (1..n).each do |y|
    break if y > x
    (1..n).each do |z|
      break if z > y
      r = x*x + y*y + z*z + x*y + y*z + z*x
      break if r > n
      r_hash[r] = [] if r_hash[r].nil?
      r_hash[r].push([x,y,z])
    end
  end
end

(1..n).each do |num|
  cnt = 0
  r_hash[num].to_a.each do |r|
    cnt += 1 if r.uniq.length == 1
    cnt += 3 if r.uniq.length == 2
    cnt += 6 if r.uniq.length == 3
  end
  puts cnt
end
