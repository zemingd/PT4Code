N, Q = gets.split.map(&:to_i)
S = gets.chomp!
Ary = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
ruisekiwa = [0]
S.each_char.with_index do |char, i|
  if char == 'A' && S[i + 1] == 'C'
    ruisekiwa << ruisekiwa.last + 1
  else
    ruisekiwa << ruisekiwa.last
  end
end

Ary.each do |line|
  l = line[0] - 1
  r = line[1] - 1

  puts ruisekiwa[r] - ruisekiwa[l]
end
