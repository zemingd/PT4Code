# https://atcoder.jp/contests/abc096/tasks/abc096_c



H, W = gets.split.map(&:to_i)
sss = Array.new(H) { gets.chomp.chars }

blackable_count = 0
un_blackables = []

sss.each_with_index do |row, i|
  row.each_with_index do |elm, j|
    if elm == '#'
      if row.dig(j-1) == '#' or row.dig(j+1) == '#'
        blackable_count += 1
      else
        un_blackables << [i, j]
      end
    end
  end
end

un_blackables.each do |i, j|
  if sss.dig(i-1, j) == '#' or sss.dig(i+1, j) == '#'
    blackable_count += 1
  end
end
puts (sss.flatten.count('#') == blackable_count) ? 'Yes' : 'No'
