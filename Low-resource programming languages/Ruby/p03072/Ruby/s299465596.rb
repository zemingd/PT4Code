N = gets
M = gets.split.map(&:to_i)
h = M[0]
c = 0

M.each do |m|
  if m >= h
    c += 1
    h = m
  end
end

p c