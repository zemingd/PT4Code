N, K, *DS = $stdin.read.split.map(&:to_i)
#digits = ([0, 1, 2, 3, 4, 5, 6, 7, 8, 9] - DS)

N.upto(Float::INFINITY) do |n|
  if (n.to_s.chars.map(&:to_i).uniq & DS).empty?
    p n
    exit
  end
end
