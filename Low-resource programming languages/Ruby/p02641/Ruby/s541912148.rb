x, n = readline.split.map(&:to_i)
p = readline.split.map(&:to_i)

smallest = 99

(-100).upto(100) do |n|
  if !p.include?(n) and (x - n).abs < (x - smallest).abs
    smallest = n
  end
end

if n.zero?
  puts x
else
  puts smallest
end
