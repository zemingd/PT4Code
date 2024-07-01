# frozen_string_literal: true

loop do
  m, f, r = readline.split(' ').map(&:to_i)
  break if m == -1 && f == -1 && r == -1

  rank = if m == -1 || f == -1
    'F'
  else
    case m + f
    when 80..100
      'A'
    when 65...80
      'B'
    when 50...65
      'C'
    when 30...50
      r >= 50 ? 'C' : 'D'
    else
      'F'
    end
  end
  puts rank
end

