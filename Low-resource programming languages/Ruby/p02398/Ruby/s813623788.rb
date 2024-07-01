require 'prime'

class Integer
  def divisor_list
    prime_division.map{|e| [*(0..e.last)].map{|v| e.first ** v }}.inject{|res, e| res.map{|t| e.map{|v| t * v}}.flatten}.sort
  end
end

class Array
  def upper_bound(val)
    a = 0
    b = size

    while a < b
      c = (( a + b ) / 2 ).to_i

      if val < at(c)
        b = c
      else
        a = c + 1
      end
    end

    b
  end

  def lower_bound(val)
    a = 0
    b = size

    while a < b
      c = (( a + b ) / 2 ).to_i

      if val <= at(c)
        b = c
      else
        a = c + 1
      end
    end

    b
  end
end

class Solver
  def initialize
    a, b, c = gets.chomp.split(' ').map(&:to_i)

    divisor_list = c.divisor_list

    n = divisor_list.lower_bound(a)
    m = divisor_list.upper_bound(b)

    puts m - n
  end
end

Solver.new