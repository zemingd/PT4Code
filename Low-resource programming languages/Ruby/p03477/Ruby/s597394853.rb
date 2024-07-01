# frozen_string_literal: true

def show(x)
  puts case x
       when 1 then 'Left'
       when -1 then 'Right'
       else 'Balanced'
       end
end

def solve(xs)
  xs[0] + xs[1] <=> xs[2] + xs[3]
end

show solve gets.split.map(&:to_i)
