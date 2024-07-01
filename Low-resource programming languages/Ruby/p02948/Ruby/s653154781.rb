n,m = gets.chomp.split.map(&:to_i)
# jobs = Hash.new{|h,k| h[k] = [0] }
jobs = []
(0..m).each{|i| jobs[i] = [] }
while str = gets
  a,b = str.chomp.split.map(&:to_i)
  next if a > m
  jobs[a].push(b)
end
ret = 0
jobs.each{|v| v.sort! }
(1..m).each{|i|
  tmp = 0
  max = 0
  (1..i).each{|j|
    next if jobs[i-j+1].empty?
    if jobs[i-j+1][-1] > max
      tmp = i-j+1
      max = jobs[tmp][-1]
    end
    }
  ret += max
  jobs[tmp].pop
  }
p ret