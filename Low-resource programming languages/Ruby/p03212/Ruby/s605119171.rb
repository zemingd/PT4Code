N = gets.to_i

def shichigosan(s="")
  return 0 if N < s.to_i
  c = '357'.chars.all? {|n| s.include?(n) } ? 1 : 0
  '357'.chars {|n| c += shichigosan(n+s) }
  return c
end
puts shichigosan