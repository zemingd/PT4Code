class Array
  def sum
    res = 0
    self.each {|x| res += x}
    res
  end
end

n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
h.sort! {|x,y| y<=>x}
h.shift(k)
puts h.sum
