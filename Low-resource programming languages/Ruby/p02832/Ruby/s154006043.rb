N = gets.to_i
A = gets.chomp.split.map(&:to_i)

current = 1
crash = 0

A.each do |a|
  if a != current
    crash += 1
  else
    current += 1
  end
end

print crash