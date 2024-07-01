h = gets.to_i
def enemy(n, count)
  if n == 1
    return 1
  end
  return (enemy(n/2, count) * 2) + count
end

puts enemy(h,1)
