N, K = gets.split.map(&:to_i)
D = gets.split

(N..100_000).each do |i|
  list = i.to_s.chars.uniq
  ls = list.size

  if ls == (list - D).size
    puts i
    break
  end
end
