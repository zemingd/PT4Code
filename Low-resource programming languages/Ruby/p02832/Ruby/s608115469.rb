n = gets.to_i
renga = gets.split(' ').map(&:to_i)
broken_renga = []
answer = 0

(1..n).times do |_s|
  renga.length.each do |i|
    if a[i] != i
      renga.delete_at(i)
      answer += 1
      break
    end
  end
end

puts answer
