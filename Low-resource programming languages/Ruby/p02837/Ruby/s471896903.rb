def eval(i, tmp, a)
  if tmp[i] == 1
    a[i].each do |aa|
      index = aa[0] - 1
      if tmp[index] == nil
        tmp[index] =  aa[1]
        eval(index, tmp, a)
      elsif tmp[index] != aa[1]
        raise "mujun"
      end
    end
  else
    a[i].each do |aa|
      index = aa[0] - 1
      if tmp[index] == nil
        tmp[index] =  aa[1] == 0 ? 1: 0
        eval(index, tmp, a)
      elsif tmp[index] == aa[1]
        raise "mujun"
      end
    end
  end
end

n = gets.to_i

a = Array.new(n).map{|_| Array.new}

(0...n).each do |i|
  ai = gets.to_i
  (1..ai).each do |_|
    a[i] << gets.chomp.split.map(&:to_i)
  end
end

ans = 0
(0...n).each do |i|
  tmp = Array.new(n)
  tmp[i] = 1
  begin
    eval(i, tmp, a)
    honests = tmp.select{|i| i == 1}.length
    ans = [ans, honests].max
  rescue RuntimeError
  end
end

p ans