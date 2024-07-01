def poland(input)
  num = []
  ope = ''

  loop do
    break if input.empty?
    ope = input.shift
    case ope
    when '+'
      a = num.pop
      b = num.pop
      num << a + b
    when '-'
      a = num.pop
      b = num.pop
      num << b - a
    when '*'
      a = num.pop
      b = num.pop
      num << a*b
    when '/'
      a = num.pop
      b = num.pop
      num << a/b
    else
      num << ope.to_i
    end
  end

  p num[0]
end

if __FILE__ == $0
  poland gets.chomp.split
end