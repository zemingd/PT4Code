gets.split.map(&:to_i).tap do |x, y|
  [
    [1, 3, 5, 7, 8, 10, 12],
    [4, 6, 9, 11],
    [2]
  ].each do |group|
    if group.include?(x) && group.include?(y)
      puts('Yes')
      exit
    end
  end
end
puts('No')