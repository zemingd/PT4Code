n = gets.to_i
indexes = Array.new(n) { gets.to_i - 1 }

i = 0
n.times do |c|
  i = indexes[i]
  if i == 1
    p c + 1
    exit
  end
end

# unable
p -1
