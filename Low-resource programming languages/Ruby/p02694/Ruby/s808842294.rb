
def main
  x = gets.chomp.to_i

  n = 100
  y = 0
  while n < x
    n = (n*101.0/100).to_i
    y = y+1
  end
  puts y
end

main
