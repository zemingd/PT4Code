N, M = gets.chomp.split().map(&:to_i)
SWITCHES = M.times.map { gets.split().map(&:to_i) }
FLAGS = gets.chomp.split().map(&:to_i)

def all_on?(comb)
  ct = 0
  m = 0
  SWITCHES.each do |a, *s|
    s.each do |s|
      ct += 1 if comb[s-1]
    end
   
    return false if ct % 2 == FLAGS[m]
    m += 1
  end
  
  return true
  
end

ans = 0

[true, false].repeated_permutation(N).each do |comb|
  ans += 1 if all_on?(comb)
end

puts ans