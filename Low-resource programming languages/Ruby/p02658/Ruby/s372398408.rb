n = gets.to_i
a = gets.split.map(&:to_i).sort_by{|x| -x}
if a.include?(0)
  puts '0'
  exit
end
b = 1
a.each do |x|
  b *= x
  if b > 10 ** 18
    puts '-1'
    exit
  end    
end
puts b