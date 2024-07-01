n,k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

lists = []
def keisan(k,i,a)
  result = []
  i_m = i - 1
  [*i..k+i_m].each {|o|
    result << a[o-1].to_i
  }

  # p result
  result.inject(:*)
end
a.each_with_index{|v, i|
  if i > 0 && i <= n-1
    lists << keisan(k,i,a)
  end
}

res = []
# p lists
lists.each_with_index{|m, n|
  if n != 0 && m != 0
    res << if lists[n-1] < m
              "Yes"
            else
              "No"
            end
  end
}

puts res