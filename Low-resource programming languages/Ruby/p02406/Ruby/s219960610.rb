@n = gets.to_i

def include3(a)
  if a % 10 == 3
    return true
  elsif a != 0
    return include3(a/10)
  else
    return false
  end
end

def check_num(i)
  print " #{i}" if i % 3 == 0 or include3(i)
end

1.upto(@n) do |i|
  check_num(i)
end

puts

