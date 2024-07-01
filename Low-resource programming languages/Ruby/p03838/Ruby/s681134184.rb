#atcoderstock
#https://atcoder.jp/contests/agc008/tasks/agc008_a
if ARGV[0]=="LOCAL_DEV"
    define_method("debug") do |var|
        p var
    end
else
    define_method("debug") do |var|
    end
end

x,y=STDIN.gets.strip.split.map(&:to_i)
if x==y
    puts 0
    exit
elsif -x==y
    puts 1
    exit
end

ans=0
if x<y
    ans = y-x
    if x<0 && y>0 && -x < y
        ans = 1+y+x
    elsif x<0 && y>0 && -x > y
        ans = 1-x-y
    end
else
    ans = x-y+2
end
puts ans
