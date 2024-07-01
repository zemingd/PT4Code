N = gets.chop.to_i
A = gets.chop.split.map(&:to_i)

def former_array(a, half)
  a[0..(half - 1)]
end

def latter_array(a, half)
  a[half..-1]
end

def delete_former_min(a)
  half = (a.size.to_f/2).ceil
  a1 = former_array(a, half)
  a1.index(a1.min)
  da = a.dup
  da.delete_at(a1.index(a1.min))
  da
end

def delete_latter_max(a)
  half = (a.size.to_f/2).floor
  a2 = latter_array(a, half)
  a2.index(a2.max) + half
  da = a.dup
  da.delete_at(a2.index(a2.max) + half)
  da
end

def score(a)
  sum = 0
  half_size = a.size / 2
  a.each_with_index do |v, i|
    if i < half_size
      sum += v
    else
      sum -= v
    end
  end
  sum
end

@candidates = []

def cut(a)
  if a.size == N * 2
    @candidates << a
    return
  end

  if (a.size - 1) % 2 == 0
    a1 = delete_former_min(a)
    a2 = delete_latter_max(a)
    [a1, a2].uniq.each do |i|
      cut(i)
    end
  else
    a1 = delete_former_min(a)
    a2 = delete_latter_max(a)
    a11 = delete_former_min(a1)
    a12 = delete_latter_max(a1)
    a21 = delete_former_min(a2)
    a22 = delete_latter_max(a2)

    [a11, a12, a21, a22].uniq.each do |i|
      cut(i)
    end
  end
end

cut(A)
@candidates.uniq!
max = nil
@candidates.each do |a|
  s = score(a)
  max = s if max.nil? || max < s
end
puts max