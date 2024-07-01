@n,q = gets.chomp.split.map(&:to_i)
ts = (@n-1).times.map{gets.chomp.split.map(&:to_i)}
cs = q.times.map{gets.chomp.split.map(&:to_i)}
@tree = Array.new(@n){Array.new}
ts.each do |a,b|
  @tree[a-1].push(b-1)
end
ans = Array.new(@n,0)
@count = Array.new(@n){Array.new}
def walk(num)
  pathed = [num]
  flag = true
  if !@tree[num].empty?
    @tree[num].each do |i|
      walk(i).each do|j|
        pathed.push(j)
      end
    flag = false
    end
  end
  @count[num] = pathed
  return pathed
end
walk(0)
cs.each do|c,add|
  @count[c-1].each do|k|
    ans[k] += add
  end
end
puts ans.join(" ")
