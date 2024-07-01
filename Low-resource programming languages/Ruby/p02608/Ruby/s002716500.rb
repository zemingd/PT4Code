input = readlines()
n = input.shift.chomp.to_i

r_hash = {}
(1..n).each do |x|
  break if x * x > n
  (1..n).each do |y|
    break if y > x
    (1..n).each do |z|
      break if z > y
      r = x*x + y*y + z*z + x*y + y*z + z*x
      break if r > n
      r_hash[r] = 0 if r_hash[r].nil?
      r_hash[r] += 1 if [x,y,z].uniq.length == 1
      r_hash[r] += 3 if [x,y,z].uniq.length == 2
      r_hash[r] += 6 if [x,y,z].uniq.length == 3
    end
  end
end

(1..n).each do |num|
  puts r_hash[num].to_i
end
