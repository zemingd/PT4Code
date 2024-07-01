N, M = gets.chomp.split().map(&:to_i)
items = gets.chomp.split().map(&:to_i)
items.sort!

another = [items.pop / 2]

(M-1).times do 
  if items.empty? || items.last < another.first
    another << (another.shift / 2)
  elsif items.last >= another.first
    another << (items.pop / 2)
  end
end

puts  items.empty? ? 0 : items.inject(&:+) + another.inject(&:+)