class Problem

  def calc
    n = gets.chomp.to_i
    t = []
    n.times do
      t.push gets.chomp.to_i
    end

    p t

    commonArr(t)
  end

  def commonArr(arr)
    return 0 if arr.empty?
    top = arr.shift
    common(top, commonArr(arr))
  end

  def common(a, b)
    s = [a, b].min
    l = [a, b].max

    return l if s == 0

    while l % s != 0
      l = l * 2
    end
    l
  end
end

print "#{Problem.new.calc}"