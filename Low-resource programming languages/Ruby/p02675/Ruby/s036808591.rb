require 'set'

class Hash
  def push(key, value)
    self[key] = [] if self[key] == nil
    self[key].push(value)
  end
end

def get_ints
  gets.split.map(&:to_i)
end

def get_ints_minus_one
  get_ints.map { |x| x - 1 }
end

def get_int
  gets.chomp.to_i
end

N = get_int

mod = N % 10

case mod
when 2, 4, 5, 7, 9
  puts 'hon'
when 0, 1, 6, 8
  puts 'pon'
when 3
  puts 'bon'
end
