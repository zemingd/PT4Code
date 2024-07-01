Css = Array.new(2) { gets.chomp }
RCss = Css.reverse.map(&:reverse)

puts RCss == Css ? 'YES' : 'NO'
