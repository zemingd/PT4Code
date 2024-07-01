x = gets.to_i
options = [0]
1.upto(200) do |i|
  options << i ** 5
end
options.repeated_combination(2) do |combi|
  a, b = combi
  if a + b == x
    a = options.find_index(a)
    b = options.find_index(b)
    b *= -1
    puts "#{a} #{b}"
    exit
  elsif a - b == x
    a = options.find_index(a)
    b = options.find_index(b)
    puts "#{a} #{b}"
    exit
  elsif b - a == x
    a = options.find_index(a)
    b = options.find_index(b)
    a *= -1
    b *= -1
    puts "#{a} #{b}"
    exit
  elsif (b * - 1) - a == x
    a = options.find_index(a)
    b = options.find_index(b)
    a *= -1
    puts "#{a} #{b}"
    exit
  end
end
