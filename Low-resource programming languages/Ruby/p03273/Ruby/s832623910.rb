require 'matrix'
h, w = gets.split.map(&:to_i)
a = []
h.times do
  a.push gets.chomp.split('')
end
m = Matrix.rows(a)
empty_rows = []
empty_columns = []
ans = []
h.times do |i|
  empty_rows.push(i) if m.row(i).select { |e| e != '.' }.empty?
end
w.times do |i|
  empty_columns.push(i) if m.column(i).select { |e| e != '.' }.empty?
end
h.times do |i|
  next if empty_rows.include?(i)
  row = []
  w.times do |j|
    next if empty_columns.include?(j)
    row.push(m[i, j])
  end
  ans.push(row)
end
ans.each do |row|
  puts row.join
end
