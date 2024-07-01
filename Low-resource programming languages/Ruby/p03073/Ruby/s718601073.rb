S = gets.chomp.chars
odd_table = {
  '0' => 0,
  '1' => 0
}
even_table = {
  '0' => 0,
  '1' => 0
}
S.each.with_index do |ch, i|
  if i.odd?
    odd_table[ch] += 1
  else
    even_table[ch] += 1
  end
end
mid1 = S.size / 2
mid2 = (S.size % 2) == 0 ? mid1 : mid1 + 1
ans = [
  (mid1 - odd_table['0']).abs + (mid2 - even_table['1']).abs,
  (mid2 - odd_table['0']).abs + (mid1 - even_table['1']).abs,
  (mid1 - odd_table['1']).abs + (mid2 - even_table['0']).abs,
  (mid2 - odd_table['1']).abs + (mid1 - even_table['0']).abs
].min
puts ans
