def binary_search(arr, key, ok=arr.size, ng=-1, f= lambda {|x| x >= key })
  while (ok - ng).abs > 1
    mid = (ok + ng) / 2
    if f.call(arr[mid])
      ok = mid
    else
      ng = mid
    end
  end
  return ok
end

n = gets.to_i
l = gets.chomp.split.map(&:to_i).sort!
res = 0
2.step(n - 1) do |k|
  1.step(k - 1) do |j|
    b, c = l[j], l[k]
    lb = binary_search(l, c - b + 1, j, -1)
    ub = binary_search(l, c + b - 1, 0, j, lambda {|x| x <= c + b - 1})
    res += ub - lb + 1
  end
end
puts res