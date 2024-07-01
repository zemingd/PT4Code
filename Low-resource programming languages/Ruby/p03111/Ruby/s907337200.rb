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
def bin_search(s,  x)
  len = s.length
  left = 0 
  right = len-1
  if s[right] <= x
    return right
  elsif s[0] >= x
    return 0
  end

  while left != right-1
    mid = (left+right)/2
    if s[mid] == x
      return  mid
    elsif s[mid] > x 
      right = mid
    else 
      left = mid
    end
  end
  return left
end

def near_diff(ls, a)
  if ls.max <= a
    return a-ls.max
  elsif ls.min >= a
    return ls.min - a
  else
    i = bin_search(ls, a)
    return [(a-ls[i]), ls[i+1]-a].min
  end
end


def solve(ls, a, b, c)
  size = ls.size 
  if size == 3
    sorted = ls.sort()
    return (a-ls[2]).abs+ (b-ls[1]).abs+(c-ls[0]).abs
  end
  size.each{|i|
    (size-i+1).each{|j|
      templs = [*ls]
      new_l = templs[i]+templs[j]
      templs.delete_at(i)
      templs.delete_at(j)
      templs.push(new_l)
      ans << [near_diff(ls,a)+near_diff(ls, b)+near_diff(ls, c), near_diff(templs,a)+near_diff(templs, b)+near_diff(templs, c)+10, solve(templs, a, b, c)].min
    }
  }
  return ans.min
end
n, a, b, c = li()
ls = []
n.times{
 ls << i()
}
p solve(ls, a, b, c)


