N=gets.chomp.to_i
MEMO=Array.new(N+1,nil)
MEMO[N]=0
targets=[N]
flg=true
while flg do
    targets_new=[]
    targets.each do |t|
        d=1
        if MEMO[t-d]==nil
            MEMO[t-d]=MEMO[t]+1
            targets_new.push(t-d)
            flg=false if t==d
        end
        d=6
        while t>=d do
            if MEMO[t-d]==nil
                MEMO[t-d]=MEMO[t]+1
                targets_new.push(t-d)
                flg=false if t==d
            end
            d*=6
        end
        d=9
        while t>=d do
            if MEMO[t-d]==nil
                MEMO[t-d]=MEMO[t]+1
                targets_new.push(t-d)
                flg=false if t==d
            end
            d*=9
        end
    end
    targets=targets_new
end
puts MEMO[0]