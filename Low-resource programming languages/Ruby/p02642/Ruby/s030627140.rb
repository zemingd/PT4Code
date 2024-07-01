require 'prime'
n = gets.to_i
a = gets.split.map(&:to_i).sort!

b = a.map{|i| Prime.prime_division(i).to_h}

ans = 0
b.each.with_index do |c, i|
  find = false
  b.each.with_index do |d, j|
    if i == j
      next
    end
    div = true
    d.each do |k, v|
      if c[k].nil? || c[k] > v
        div = false
        break
      end
    end
    if div
      find = true
      break
    end
  end
  if !find
    ans += 1
  end
end

p ans