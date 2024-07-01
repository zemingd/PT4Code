N,M,K=gets.split.map(&:to_i)

as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
books = (as + bs).sort

k = K
count = 0
books.each do |m|
    break if k - m < 0
    k -= m
    count += 1
    
end

puts count