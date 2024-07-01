N,M=gets.split.map(&:to_i)

all_likes = Array.new(M+1, true)
all_likes[0] = false

N.times do
  one_likes = gets.split.map(&:to_i)
  k = one_likes.delete_at(0)

  for i in 1..M do
    if !one_likes.include?(i)
      all_likes[i] = false
    end
  end
end

puts all_likes.select{|e| e == true}.length
