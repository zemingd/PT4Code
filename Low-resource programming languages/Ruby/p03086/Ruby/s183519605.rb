require 'set'
s = gets.strip
targets = Set['A', 'C', 'G', 'T']

longest = 0
current = 0
s.split('').each do |s|
  if targets.include?(s)
    current += 1
  else
    longest = [longest, current].max
    current = 0
  end
end
puts [longest, current].max