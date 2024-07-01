def s()
  gets().chomp
end
def i()
  gets.to_i
end
def li()
  gets.split.map(&:to_i)
end
def ili()
  n = gets.to_i
  as = gets.split.map(&:to_i)
  [n, as]
end
class Array
  def sum
    total = 0
    self.each do |item|
      total += item
    end
    total
  end
end

n, m = li()
as = []
m.times{
  as << li()
}
as.sort_by!{|a, b| b}
remove = as[0][1] - 1
count = 1
as.shift
as.each{|a, b|
  if a > remove
    remove = b-1
    count += 1
  end
}
puts count
