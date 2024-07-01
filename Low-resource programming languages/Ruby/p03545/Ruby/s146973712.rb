# frozen_string_literal: true

a, b, c, d = gets.each_char.map(&:to_i)
op = [1, -1]
sgn = %w[+ -]

(2**3 - 1).times do |i|
  if a + op[i[0]] * b + op[i[1]] * c + op[i[2]] * d == 7
    puts "#{a}#{sgn[i[0]]}#{b}#{sgn[i[1]]}#{c}#{sgn[i[2]]}#{d}=7"
    exit
  end
end