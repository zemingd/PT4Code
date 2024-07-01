class Array
  def parallel?
    [self[0], self[1], self[2], self[3]].slope == [self[4], self[5], self[6], self[7]].slope
  end

  def slope
    return 0 if self[0] == self[2]
    (self[3] - self[1]) / (self[2] - self[0])
  end
end

gets.to_i.times do
  puts gets.split(" ").map(&:to_f).parallel? ? "YES" : "NO"
end