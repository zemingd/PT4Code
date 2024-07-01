def f()
  a, b = gets.split.map(&:to_i).sort
  return if a == 0 && b == 0
  puts "#{a} #{b}"
  f()
end

f()
