a=gets.split.map(&:to_i)
a.each_with_index do |item,i|
  if item==0
    puts i
  end
end