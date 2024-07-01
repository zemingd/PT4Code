gets;
task=ARGF.map{|s|s.split.map(&:to_i)}.sort_by {|_,t|t}

t=0
task.each{|v,k|
    if(t+v > k)
        print 'No'
        exit
    end
    t+=v
}

print 'Yes'