N,C=gets.split.map(&:to_i)

task=Array.new(C){Array.new}
N.times do
    s,t,c=gets.split.map(&:to_i)
    task[c-1] << [s,t]
end

task2=Array.new(10**5+10,0)
task.each do |channel|
    next if channel.size==0
    channel.sort!
    lasts,lastt=channel.shift
    channel.each do |s,t|
        if lastt==s
            lastt=t
        else
            task2[lasts-1]+=1
            task2[lastt]-=1
            lasts,lastt=s,t
        end
    end
    task2[lasts-1]+=1
    task2[lastt]-=1
end

temp=0
p task2.map{|t| temp+=t}.max
