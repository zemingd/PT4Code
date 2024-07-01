n = gets.to_i

a = gets.split.map(&:to_i)
count = 0
even = []

a.each do |i|
  if i.even?
    even << 1
    if (i % 3 == 0) || (i % 5 == 0)
      count += 1
    end
  end
end


puts even.size == count ? "APPROVED": "DENIED"