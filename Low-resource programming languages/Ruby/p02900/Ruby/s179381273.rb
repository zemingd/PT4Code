# frozen_string_literal: true

a, b = gets.chomp.split(' ').map(&:to_i)

gcd = a.gcd(b)

factor = `factor #{gcd}|sed -r 's/[0-9]+://g'|tr ' ' '\n'|sort -n|uniq`.split.map(&:to_i)

copied_factor = factor.dup

factor.each do |i|
  copied_factor.delete_if do |j|
    j > i && j % i == 0
  end
end

puts copied_factor.length + 1
