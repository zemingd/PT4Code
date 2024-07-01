y, m, d = gets.chomp.split('/').map(&:to_i)

def heisei?(y, m, d)
  return false if y > 2019
  return true if y < 2019
  return false if m > 4
  true
end

puts heisei?(y, m, d) ? 'Heisei' : 'TBD'

