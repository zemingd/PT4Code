io = STDIN
n,k=io.gets.chomp.split.map(&:to_i)
d=io.gets.chomp.split.map(&:to_i)
like=((0..9).to_a - d)
(n..99999).each do |x|
  if x.to_s
      .split(//)
      .map(&:to_i)
      .all?{|a|like.include?(a)}
    puts x
    break
  end
end