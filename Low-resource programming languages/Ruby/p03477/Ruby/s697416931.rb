puts(gets.chomp.split.map(&:to_i).tap { |a, b, c, d|
  break case a + b <=> c + d
  when 1
    'Left'
  when 0
    'Balanced'
  when -1
    'Right'
  end
})