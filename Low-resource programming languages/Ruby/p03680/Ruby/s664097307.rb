#a→bに到達可能か？
def isAccessible(a, s, t)
  (a[s-1] == t) ? true : false
end 

N = gets.to_i
a = []
N.times.map{a << gets.to_i}

target = 2

1.upto N do |e|
  1.upto N do |i|
    if isAccessible(a, i, target)
      target = i
      if target == 1
        puts e
        exit
      end
      break
    end
  end
end
puts -1