arr = []
class << arr
  def insert(n)
    self.unshift(n)
  end
  
  def delete(n)
    self.delete_at(self.index(n))
  end
  
  def deleteFirst(arg = nil)
    self.shift
  end
  
  def deleteLast(arg = nil)
    self.pop
  end
end
gets.to_i.times do
  arr.send(*gets.split(" ").map(&:to_sym))
end
puts arr.join(" ")