def solver(n,a,index,res,all_results)
    if n.size == index
        s = res.join
        all_results << s if n <= s
        return
    end
    a.each do |e|
        if n[index] <= e
            tmp = res.clone
            tmp << e
            solver(n,a,index+1,tmp,all_results)
        end
    end
end
n = gets.split[0]
a = (%w(1 2 3 4 5 6 7 8 9 0) - gets.split).sort

if n <= a.max*n.size
    all_results = []
    solver(n,a,0,[],all_results)
    puts all_results.min
else
    if a[0] != '0'
        puts a[0]*(n.size+1)
    else
        puts a[1]+a[0]*n.size
    end
end