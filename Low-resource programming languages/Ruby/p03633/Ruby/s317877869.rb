class Problem

  def calc
    n = gets.chomp.to_i
    t = []
    n.times do
      t.push gets.chomp.to_i
    end

    commonArr(t)
  end

  def commonArr(arr)
    p arr
    return 1 if arr.empty?
    top = arr.shift
    common(top, commonArr(arr))
  end

  def common(a, b)
    s = [a, b].min
    l = [a, b].max
    p "#{[a,b]}, #{s}, #{l}"

    return l if s == 1

    count = 1
    ans = l
    while true
      ans = l * count
      if ans % s == 0
        break
      end
      count = count + 1
    end
    ans
  end
end

print "#{Problem.new.calc}"
