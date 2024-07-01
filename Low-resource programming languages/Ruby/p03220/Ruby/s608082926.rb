gets
t, a = gets.chomp.split.map(&:to_i)

const = (a - t)/0.006

errors = gets.chomp.split.map(&:to_i).map{|x| (const + x)**2}
min = errors.min
errors.each_with_index do |e, i|
  if e == min
    puts i+1
    break
  end
end