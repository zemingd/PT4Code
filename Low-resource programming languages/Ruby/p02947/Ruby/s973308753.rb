attrs = $stdin.gets.chomp.split(' ').map(&:to_i)
N = attrs[0]
arr = []
i = 0
j = 0
res = 0
used_arr = []
while i < N
  val = $stdin.gets.chomp
  arr.each do |a|
    if val.chars.sort == a.chars.sort && !used_arr.include?([a, target].sort)
      res += 1
      used_arr << [a, target].sort
    end
  end
  arr << val
  i += 1
end
puts res