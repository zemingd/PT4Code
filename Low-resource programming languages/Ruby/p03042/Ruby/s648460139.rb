# frozen_string_literal: true

S = gets.strip
front = S[0..1].to_i
back = S[2..3].to_i
r = 'NA'
r = 'ABIGUOUS' if front > 0 && front < 13 && back > 0 &&  back < 13
r = 'YYMM' if front > 12 && back > 0 && back < 13
r = 'MMYY' if front > 0 && front < 13 && back > 13
puts r