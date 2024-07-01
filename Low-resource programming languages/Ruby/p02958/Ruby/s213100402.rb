n = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)

diff_count = (1..n).zip(p).inject(0) do |diffs, ary|
  if ary[0] == ary[1]
    diffs += 0
  else
    diffs += 1
  end
end

if diff_count < 3
  puts 'YES'
else
  puts 'NO'
end