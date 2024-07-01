H, W = gets.split(" ").map( & :to_i)
a = []
w_indexes = (W - 1).downto(0).to_a
H.times do
  row = gets.chomp.split("")
  next if row.uniq == ["."]

  w_indexes = w_indexes.select { | i | row[i] == "." }
  a << row
end
transposed_a = a.transpose
w_indexes.each { | i | transposed_a.delete_at(i)}

transposed_a.transpose.each { |row| puts row.join }