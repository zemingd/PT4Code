n = gets.to_i

$visited = []
# $is_honest = Array.new(n, nil)
$as = []

n.times do
  ans = Array.new
  a = gets.to_i
  a.times do
    x, y = gets.split.map(&:to_i)
    ans << [x, y == 1]
  end
  $as << ans
end


res = 0
bitflag = 0
while bitflag <= 2 ** n
  is_honest = Array.new(n, nil)
  n.times do |i|
    flag = 2 ** i
    # p [bitflag, flag, i, flag & bitflag]
    is_honest[i] = (flag & bitflag) > 0 ? true : false
  end
  valid = true
  $as.each_with_index do |a, current|
    a.each do |i|
      idx = i[0] - 1
      target_is_honest = i[1]
      if is_honest[idx] != target_is_honest && is_honest[current]
        # p is_honest
        # puts "#{idx} != #{target_is_honest} (#{current} said)"
        valid = false
        break
      end
    end
    break unless valid
  end
  res = [is_honest.count(true), res].max if valid
  bitflag += 1
end

puts res
