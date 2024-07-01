# frozen_string_literal: true

length = gets.to_i

ary = gets.split(' ').map(&:to_i).sort

count = 0

t_ary = ary.length > 3 ? (ary[(length / 2).to_i - 1]..ary[(length / 2).to_i + 1]).to_a : ary

t_ary.each do |d|
  arc = ary.select { |a| a >= d }
  count += 1 if arc.length == (ary - arc).length
end

puts count
