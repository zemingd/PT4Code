# matrixの基本操作

def same_el(array_)
  if array_.kind_of?(Array)
    output = []
    for i in  0..(array_.count-1)
      output.push(array_[i])
    end
  end
  return output
end

# ---------------------------------------------

def replace(n)

  sgn=[]
  remain=[]
  output=[] #n!個の要素を持つ配列を返す
  for i in 0..n
    sgn << i
    remain << i
  end
  output << []
  for i in 0..n
    output[0] << i
  end

  while true
    remain_act = same_el(remain)
    remain_act.delete(0)
    for i in 1..n-1
      judge_order = true
      for j in i+1..n-1
        sgn[j]<sgn[j+1] && judge_order = false
      end
      judge_order && break
      remain_act.delete(sgn[i])
    end
    singular = i
    remain_act.sort!
    for i in 0..n-(singular-2)
      if sgn[singular] == remain_act[i]
        sgn[singular] = remain_act[i+1]
        break
      end
    end
    remain_act.delete(sgn[singular])
    for i in singular+1..n
      sgn[i] = remain_act[i-(singular+1)]
    end
    inp =same_el(sgn)
    output << inp
    lastmat=true
    for i in 1..n
      sgn[i] != n+1-i && lastmat=false
    end
    lastmat && break
  end

  for i in 0..output.count-1
    output[i].delete(0)
  end
  output
end

# ---------------------------------------------

def signal(replaces)
  output = Array.new
  index = Array.new

  replace.size.times do |i|
    for j in 0..replaces.size-1
      index[j] = j+1
    end
    i_op = i.clone
    while true
      j = 0
      nimotu = index[0]
      sgn_part = -1
      while true
        if i_op[j] == nimotu

        else
        end
      end

    end
    output << sgn
  end
end

N=gets.to_i
ar=replace(N)
ps=gets.split.map(&:to_i)
qs=gets.split.map(&:to_i)
p (ar.index(ps)-ar.index(qs)).abs