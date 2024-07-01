def codei
  return gets.split.map &:to_i
end

n,i = codei

puts n-i+1

