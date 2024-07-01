class Integer
  def combination(k)
    return 1 if k.zero?

    (self - k + 1..self).inject(:*) / k.factorial
  end

  def factorial
    return 1 if self.zero?

    (1..self).inject(:*)
  end
end

n = gets.to_i
ary = gets.split(' ').map(&:to_i)

hash = {}
uni_balls = ary.uniq

uni_balls.each do |b|
  balls = ary.dup
  ind = balls.index(b)
  balls.delete_at(ind)
  group = balls.group_by{|i| i}

  hash[b] = 0
  values = group.values.select { |a| a.size >= 2 }
  values.each do |a|
    hash[b] += a.size.combination(2)
  end
end

ary.each { |a| puts hash[a] }