a = gets.chomp.split("")

max = 0
r = 0

a.each do |e|
  if e == 'R'
    r += 1
    if r > max
      max = r
    end
  else
    r = 0
  end
end

p max