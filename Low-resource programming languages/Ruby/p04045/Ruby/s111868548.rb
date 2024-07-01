n,k = gets.split.map(&:to_i)
a = n.to_s.split('').map(&:to_i)
d = gets.split.map(&:to_i)

(n..99999).each do |f|
  q = f.to_s.split('').map(&:to_i)
  if !q.any? {|y| d.include?(y)}
    p f
    exit
  end
end
