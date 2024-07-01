N, X = gets.split.map(&:to_i)
towns = gets.split.map(&:to_i).sort
first_point = nil
diff_array = []


diff = 123456789

towns.each_with_index{|i, idx|
  if X > i
    if diff > (X - i)
      first_point = i
      diff = (X - i)
    end
  else
    if diff > (i - X)
      first_point = i
      diff = (i - X)
    end
  end

  unless idx == 0
    diff_array << (towns[idx]-towns[idx-1])
  end
}

diff_array << diff
if diff_array.length == 1
  diff_array << diff
end
diff_array.delete(0)
diff_array.sort!

def gcd(x, y)
  if y == 0
    return y
  end

  if y > x
    gcd(y, x)
  end

  r = x % y
  if r.zero?
    return y
  end

  gcd(y, r)
end

result = diff_array.reduce{|memo, item|
  gcd(memo, item)
}

puts result
