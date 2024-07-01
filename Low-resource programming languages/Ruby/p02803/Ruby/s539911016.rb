# after listening explanation
h, w = gets.split.map(&:to_i)
n = h*w
s = $<.map{|l| (l.chomp.chars.map{|i|i!="#"}) }.flatten
way = [*0..(n-1)].select{|i|s[i]}
p way.map{|k|
  # bfs
  distance = Array.new(n)
  distance[k] = 0
  que = [k]
  checked = [k]
  until que==[]
    i = que.shift
    if i%w!=0 && s[i-1] && (!checked.include?(i-1))
      distance[i-1] = distance[i]+1
      que << i-1
      checked << i-1
    end
    if i%w!=w-1 && s[i+1] && (!checked.include?(i+1))
      distance[i+1] = distance[i]+1
      que << i+1
      checked << i+1
    end
    if i/w!=0 && s[i-w] && (!checked.include?(i-w))
      distance[i-w] = distance[i]+1
      que << i-w
      checked << i-w
    end
    if i/w!=h-1 && s[i+w] && (!checked.include?(i+w))
      distance[i+w] = distance[i]+1
      que << i+w
      checked << i+w
    end
  end
  distance.delete(nil)
  distance.max
}.max
