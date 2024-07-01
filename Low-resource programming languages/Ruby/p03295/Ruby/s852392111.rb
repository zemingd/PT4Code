lines = $stdin.read
array = lines.split("\n")
N,M = array[0].split(" ").map(&:to_i)

schedules = array[1..M].map.with_index do |str,idx|
  s,t = str.split(" ").map(&:to_i)
  [s,t]
end.sort_by do |job|
  [job.last,job.first]
end

ans,t = 0,0

for i in 0...schedules.length
  #p schedules[i]
  if t <= schedules[i].first
    ans += 1
    t = schedules[i].last
  end
end

p ans
