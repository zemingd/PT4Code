N = gets.to_i
As = [nil ] + readlines.map(&:to_i)

c, i = 0, 2
loop do
  case
  when c > N
    puts -1
    break
  when i == 1
    puts c
    break
  else
    i = As.index(i)
    c += 1
  end
end