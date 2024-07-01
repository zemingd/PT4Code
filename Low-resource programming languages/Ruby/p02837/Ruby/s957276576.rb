N = gets.to_i
T = Array.new(N) do
  Array.new(gets.to_i) do
    gets.split.map(&:to_i)
  end
end

def ok?(bistr)
  N.times do |j|
    next if bistr[j] == '0'

    T[j].each do |x, y|
      return false if bistr[x - 1] != y.to_s
    end
  end

  return true
end

count = Array.new(2**N) do |number|
  bistr = number.to_s(2).rjust(N, '0')
  ok?(bistr) ? bistr.count('1') : 0
end.max

puts count
