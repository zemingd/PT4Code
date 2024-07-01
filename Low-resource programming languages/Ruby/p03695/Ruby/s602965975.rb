N = gets.to_i
AS = gets.split.map(&:to_i)

MIN = 8

counts = Array.new(9, 0)
AS.each do |a|
  case a
  when 1..399
    counts[0] += 1
  when 400..799
    counts[1] += 1
  when 800..1199
    counts[2] += 1
  when 1200..1599
    counts[3] += 1
  when 1600..1999
    counts[4] += 1
  when 2000..2399
    counts[5] += 1
  when 2400..2799
    counts[6] += 1
  when 2800..3199
    counts[7] += 1
  when 3200..4800
    counts[8] += 1
  end
end

special_color = counts.delete_at(8)
zero_count = counts.count { |c| c == 0 }
if zero_count == MIN
  min_count = 1
  max_count = special_color
else
  min_count = counts.count { |c| c != 0 }
  max_count = min_count + special_color
end
puts("#{min_count} #{max_count}")