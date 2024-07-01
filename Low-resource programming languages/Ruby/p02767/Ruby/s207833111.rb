n = gets.chomp!.to_i
ls = gets.split(" ").map(&:to_i)

ls = ls.sort
#p ls
start = ls.first
goal = ls.last



for i in start..goal do
  score = 0
  ls.each do |e|
    score += (e - i)**2
  end
  if i == start
    d = score
  else
    if score < d
      d = score
    end
  end
end

p d
