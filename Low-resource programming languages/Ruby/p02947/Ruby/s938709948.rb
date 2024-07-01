n = gets.strip.to_i
s = readlines.map {|line| line.strip.split('').sort.join('') }

log = {}
result = 0
s.each do |s|
  if log[s].nil?
    log[s] = 1
    next
  end
  log[s] += 1
  result+=log[s]-1 if log[s] > 1
end

p result