s = gets.chomp
acgt = {
  'A' => true,
  'C' => true,
  'G' => true,
  'T' => true
}

max = 0
0.upto(s.size - 1) do |i|
  len = 0
  i.upto(s.size - 1) do |j|
    break unless acgt[s[j]]
    len += 1
  end
  max = [max, len].max
end

puts max
