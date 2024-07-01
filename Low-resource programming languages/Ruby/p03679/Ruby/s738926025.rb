gets.split.map(&:to_i).tap do |x, a, b|
  puts(
    if a >= b
      'delicious'
    elsif a + x >= b
      'safe'
    elsif a + x < b
      'dangerous'
    end
  )
end