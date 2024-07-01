gets
a = gets.split(' ').map(&:to_i)
n = a.each_with_index.count do |pi, i|
  a[0, i].all? {|pj| pi < pj }
end
puts n
