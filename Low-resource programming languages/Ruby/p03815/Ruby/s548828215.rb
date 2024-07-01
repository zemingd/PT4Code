# https://atcoder.jp/contests/abc098/tasks/abc098_a

if ARGV[0]=="LOCAL_DEV"
  define_method("debug") do |var|
    p var
  end
else
  define_method("debug") do |var|
  end
end

X=STDIN.gets.strip.to_i
a=X/11

a*=2
b=X%11
if b>6
  a+=2
elsif b>0
  a+=1
end
puts a


