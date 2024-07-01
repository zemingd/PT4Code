n = gets.to_i
arr = gets.chomp.split.map(&:to_i)
collection = Array.new(8, 0)
over = 0
arr.each do |a|
  c = a/400
  if c >= 8
    over += 1
  else
    if collection[c].zero?
      collection[c] = 1
    end
  end
end
minimum = collection.sum
maximum = [8, minimum+over].min
puts "#{minimum} #{maximum}"