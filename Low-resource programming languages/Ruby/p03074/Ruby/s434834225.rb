def handstand(s, k)
  ones = []
  zeros = []

  prev = s[0]
  count = 0
  s.each_char do |c|
    if prev == c
      count += 1
    else
      if prev == '1'
        ones << count
      else
        zeros << count
      end
      count = 1
    end
    prev = c
  end

  s[-1] == '1' ? ones << count : zeros << count

  if zeros.count <= k
    return s.size
  end

  max = 0
  sum = 0
  used_one = []
  used_zero = []
  if s[0] == '1'
    sum += ones.first
    used_one << ones.shift
  end

  k.times do
    sum += zeros.first
    sum += ones.first
    used_zero << zeros.shift
    used_one << ones.shift
  end
  max = sum

  until zeros.empty? || ones.empty?
    sum -= used_one.first
    sum -= used_zero.first
    sum += zeros.first
    sum += ones.first
    used_zero << zeros.shift
    used_one << ones.shift
    used_zero.shift
    used_one.shift
    max = [max, sum].max
  end

  unless zeros.empty?
    sum -= used_zero.first if !used_zero.empty?
    sum -= used_one.first if !used_one.empty? && s[0] == '1'
    sum += zeros.first
    max = [max, sum].max
  end

  max
end

n, k = gets.split.map(&:to_i)
s = gets.chomp
puts handstand(s, k)