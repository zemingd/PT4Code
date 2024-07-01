def judge(list, a, x, y)
  arr = Array.new(a.length,-1)
  list.each{ |i|
    arr[i] = 1
  }
  bool = true
  list.each{|i|
    a[i].times{|t|
      if (arr[x[i][t]-1] == -1 && y[i][t] == 1) || (arr[x[i][t]-1] == 1 && y[i][t] == 0)
        bool = false
      end
    }
  }
  bool
end

n = gets.to_i
a = []
x = Array.new(n).map{Array.new}
y = Array.new(n).map{Array.new}
n.times{|i|
  a[i] = gets.to_i
  a[i].times{|t|
    x[i][t], y[i][t] = gets.chomp.split(" ").map(&:to_i)
  }
}

bit = 2**n-1
ans = 0
for i in 0..bit
  list = []
  keta = 0
  num = 0
  while i > 0
    if i%2 == 1
      list.push(keta)
      num += 1
    end
    i = i / 2
    keta += 1
  end
  if judge(list, a, x, y)
    ans = num > ans ? num : ans
  end
end

puts ans