input = readlines()
n = input.shift.chomp.to_i

r_hash = {}
(1..n).each do |num|
  tmp = []
  start = num < 6 ? 1 : num / 6
  (start..num).each do |x|
    break if 6 * (x - 1) > num
    (1..num).each do |y|
      break if x * 3 + y * 2 > num
      break if y > x
      (1..num).each do |z|
        break if z > y
        r = x*x + y*y + z*z + x*y + y*z + z*x
        tmp.push([x, y, z]) if r == num
        break if r > num
      end
    end
  end
  cnt = 0
  tmp.each do |t|
    cnt += 1 if t.uniq.length == 1
    cnt += 3 if t.uniq.length == 2
    cnt += 6 if t.uniq.length == 3
  end
  puts cnt
end
