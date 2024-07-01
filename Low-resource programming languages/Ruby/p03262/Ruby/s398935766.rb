# frozen_string_literal: true

N, X = gets.split.map(&:to_i)
CITIES = gets.split.map(&:to_i)

abs_list = CITIES.map {|city| (city - X).abs }.sort {|a, b| b <=> a }

def func(a, b)
  remainder = a % b
  if remainder > 0
    func(b, remainder)
  else
    b
  end
end

puts abs_list.inject(abs_list[0]) {|answer, val| func(val, answer) }
