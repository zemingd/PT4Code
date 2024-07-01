N, Q = gets.split.map(&:to_i)
seq = gets.chomp
lr = Array.new(Q){gets.split.map(&:to_i)}

a = Array.new(seq.length, 0)

(seq.length-1).times do |i|
  a[i+1] = a[i] + (seq[i..i+1].match(/AC/) ? 1 : 0)
end

lr.each do |v|
  puts a[v[1]-1]-a[v[0]-1]
end