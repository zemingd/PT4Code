class Integer
  def combination(k)
    return 1 if k.zero?

    (self - k + 1..self).inject(:*) / k.factorial
  end

  def permutation(k)
    return 1 if k.zero?

    (self - k + 1..self).inject(:*)
  end

  def factorial
    return 1 if self.zero?

    (1..self).inject(:*)
  end
end

n = gets.to_i
d = gets.split.map(&:to_i)

flag = 1

flag = 0 if d[0] != 0
ds = Hash.new(0)
d.each do |dn|
  ds[dn] += 1
end
prek = prev = -1
ds.sort.each do |k,v|
  if prek != -1
    flag = 0 if prek+1 != k
    flag = 0 if prev*2 < v
  end
  prek = k
  prev = v
end

if flag == 1
  ans = 1
  prev = 1
  ds.sort.each do |k,v|
    if k >= 1
      ans *= prev**v
      prev = v
    end
  end
  puts ans % 998244353
else
  puts 0
end