N, Q = gets.chomp.split.map(&:to_i)
S = gets.chomp
input = Array.new(Q) { gets.chomp.split.map(&:to_i) }
input.each do |l, r|
  str = S[(l-1)..(r-1)]
  cnt = 0
  str.chars.each_cons(2) do |i|
    cnt += 1 if i == 'AC'.chars
  end
  p cnt
end
