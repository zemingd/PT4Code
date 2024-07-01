def solve(x)
  a1 = x / 11                                                                                                                    r1 = x - (a1 * 11)                                                                                                             a = a1 * 2                                                                                                                     if r1 > 0
    if r1 < 7                                                                                                                        a += 1                                                                                                                       else                                                                                                                             a += 2                                                                                                                       end                                                                                                                          end
  a                                                                                                                            end

def test
  (1..100).each do |x|
    puts "#{x} : #{solve(x)}"
  end
end

def main
  x = gets.to_i
  puts solve(x)
end

if __FILE__ == $0
  main
end