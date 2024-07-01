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

n, k = li()
as = li()

hash = {}

as.each{|a|
  if hash[a] == nil
    hash[a] = 1
  else
    hash[a] += 1
  end
}

arr = hash.sort_by{|k, v| v}.to_ary

puts arr[0..arr.length-1-k].reduce(0){|acc, a| acc+a[1]}