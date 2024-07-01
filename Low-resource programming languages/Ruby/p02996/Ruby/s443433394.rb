class Jobs
   attr_accessor :time, :dead
end

s = gets.to_i
jobs = []

for i in 0..s-1 do
  job= Jobs.new
  m = gets.chomp.split(" ")
  job.time = m[0].to_i
  job.dead = m[1].to_i
  jobs.push(job)
end

jobs.sort! do |a, b|
  (a.dead <=> b.dead) ||
    (a.time <=> a.time)
end
endtime =  jobs.map { |a| a.time.to_i }
deadtime = jobs.map { |b| b.dead.to_i }

sumtime = 0
res = "Yes"
for j in 0..s-1 do
  sumtime = sumtime + endtime[j] 
  if sumtime.to_i > deadtime[j].to_i
    res = "No"
  end
end
puts res