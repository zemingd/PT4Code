n = gets.strip.to_i
ss = gets.strip.split('')

rl = [ss.shift]
ss.each do |c|
  next if c == rl.last
  rl.push(c)
end

p rl.length
