n, m = gets.split.map &:to_i
k = Array.new(m)
s = Array.new(m)
m.times{|i|
    arr = gets.split.map &:to_i
    k[i] = arr[0]
    s[i] = arr[1..arr.size]
}
ps = gets.split.map &:to_i

suitti = (1..n).to_a
cnt = 0

def check(ons, m,k, s, ps)
    return (0...m).all?{|i|
        ons.count{|e|s[i].include?(e)}%2 == ps[i]
    }
end
ans = 0
while cnt < (1 << n)
    bit = cnt.to_s(2).rjust(n,'0').split("").map(&:to_i)
    
    sample = []
    suitti.zip(bit).each do |test|
      item,b = test.first,test.last
      # bitが1だったら処理
      if b==1 
        sample << item
      end
    end
  
    #p sample
    #sample にswitchおんのやｔるがはいってるよ

    if check(sample, m,k,s,ps)
        ans = ans + 1
    end
    cnt = cnt + 1
end

p ans