count = 0
ary = gets.chop.chars.map(&:to_i)
first = ary[0]
odd = ary.select.with_index{|e, i| i % 2 == 0}
even = ary.select.with_index{|e, i| i % 2 == 1}

if first == 1
  odd.each do |odd_ele|
    if odd_ele != 1
      count += 1
    end
  end
  even.each do |even_ele|
    if even_ele != 0
      count += 1
    end
  end
end

if first == 0
  odd.each do |odd_ele|
    if odd_ele != 0
      count += 1
    end
  end
  even.each do |even_ele|
    if even_ele != 1
      count += 1
    end
  end
end

p count