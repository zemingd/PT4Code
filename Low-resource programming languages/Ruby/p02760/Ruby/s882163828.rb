def lscan; gets.split.map(&:to_i); end

tables = [lscan,lscan,lscan]

gets.to_i.times do
  b = gets.to_i
  tables.map!{|li| li.map{|e| e == b ? nil : e }}
end

bg = false
bg ||= !tables[0][0] && !tables[0][1] && !tables[0][2]
bg ||= !tables[1][0] && !tables[1][1] && !tables[1][2]
bg ||= !tables[2][0] && !tables[2][1] && !tables[2][2]
bg ||= !tables[0][0] && !tables[1][0] && !tables[2][0]
bg ||= !tables[0][1] && !tables[1][1] && !tables[2][1]
bg ||= !tables[0][2] && !tables[1][2] && !tables[2][2]
bg ||= !tables[0][0] && !tables[1][1] && !tables[2][2]
bg ||= !tables[0][2] && !tables[1][1] && !tables[2][0]

puts bg ? 'Yes' : 'No'