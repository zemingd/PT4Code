def t_or_t(input)
  n, a, b = input.split(' ').map(&:to_i)
  print n * a > b ? b : n * a
end

t_or_t(gets)
