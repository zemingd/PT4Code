N, Q = gets.chomp.split.map(&:to_i)
S = gets.chomp
input = Array.new(Q) { gets.chomp.split.map(&:to_i) }
input.each do |l, r|
  str = S[(l-1)..(r-1)]
  cnt = 0
  if str.include?('AC')
    str.chars.each_cons(2) do |i|
      cnt += 1 if i == 'AC'.chars
    end
  else
    cnt = 0
  end
  puts cnt
end
