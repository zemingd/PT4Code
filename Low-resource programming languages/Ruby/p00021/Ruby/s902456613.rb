class Array
  def parallel?
    self[0..3].slope == self[4..7].slope
  end

  def slope
    (self[3] - self[1]) / (self[2] - self[0])
  end
end

num = gets.to_i

num.times do
  puts gets.split(" ").map(&:to_f).parallel? ? "YES" : "NO"
end