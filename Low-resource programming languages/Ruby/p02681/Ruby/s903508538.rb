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

def get_int
  gets.chomp.to_i
end

S = gets.chomp
T = gets.chomp

if S.length + 1 == T.length && T.start_with?(S)
  puts 'Yes'
else
  puts 'No'
end
