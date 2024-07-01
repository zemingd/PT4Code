def set_ans(n, combi, arr)
  a = Array.new(n)
  n.times do |i|
    if combi[i] == '1'
      arr.each do |ar|
        if ar[0] == i
	      if a[ar[1]].nil?
	        a[ar[1]] = ar[2]
	      elsif a[ar[1]] != ar[2]
	        return false
          else
	        next
	      end
        end
      end
    end
  end
  n.times do |i|
    if a[i].nil?
      next
    else
      if a[i] != combi[i]
        return false
      end
    end
  end
  return true
end

n = gets.to_i

arr = []

n.times do |ai|
  ai = gets.to_i
  ai.times do |i|
    x, y = gets.chomp.split(' ').map(&:to_i)
    arr.push([ai, x, y])
  end
end

l = 2**n - 1
answer = 0

l.downto(0) do |c|
  combi = c.to_s(2).rjust(n, "0")
  if set_ans(n, combi, arr)
    answer = combi.count('1')
    puts combi
    break
  end
end

puts answer