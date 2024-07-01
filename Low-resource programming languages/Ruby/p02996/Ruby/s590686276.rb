ok = true
gets.to_i.times.map{|i|
    gets.split.map(&:to_i)
}.sort_by{|it| it[1]}.inject(0){|acc_time, task|
    ok = ok && acc_time + task[0] <= task[1]
    acc_time + task[0]
}

puts(ok ? 'Yes' : 'No')
