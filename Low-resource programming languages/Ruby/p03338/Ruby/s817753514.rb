require 'set'

def main
  n = ARGF.gets.to_i

  chars = ARGF.gets.chars.to_a

  max_common = 0
  0.upto(n-2) do |i|
    s1 = Set.new(chars[0..i])
    s2 = Set.new(chars[i+1..n-1])

    max_common = [max_common, (s1 & s2).count].max
  end

  puts max_common
end

if __FILE__ == $0
  main
end
