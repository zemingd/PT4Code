# frozen_string_literal: true

_ = gets
p = gets.split.map(&:to_i).map(&:pred)

puts p.select.with_index.count { |e, idx| e != idx } <= 2 ? :YES : :NO