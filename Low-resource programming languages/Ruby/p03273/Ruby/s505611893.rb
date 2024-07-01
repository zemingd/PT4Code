h, _ = gets.chomp.split.map(&:to_i)
a = Array.new(h) { gets.chomp.chars }
res = []
a.each do |row|
  if row.join("")[/^\.+$/].nil?
    res << row
  end
end
a = res
res = []
a.transpose.each do |col|
  if col.join("")[/^\.+$/].nil?
    res << col
  end
end
puts res.transpose.map(&:join)