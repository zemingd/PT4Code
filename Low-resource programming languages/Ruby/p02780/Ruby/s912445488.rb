n, k = gets.chomp.split.map(&:to_i)
array = gets.chomp.split.map(&:to_i)

kitaitis = array.map.with_index do |e, i|
  (1 + e) / 2.0
end

ruisekiwas = [0]
kitaitis.each do |e|
  ruisekiwas << e + ruisekiwas.last
end
size = ruisekiwas.size

anses = []
ruisekiwas.map.with_index do |e, i|
  if i + k > size - 1
    break
  end

  anses << ruisekiwas[i + k] - e
end

puts anses.max
