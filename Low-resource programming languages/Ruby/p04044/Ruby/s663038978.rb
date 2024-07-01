N,L = gets.split(' ').map!(&:to_i)
words = Array.new
for i in 1..N do
  words.push(gets.strip)
end

puts words.sort!.join('')