require 'date'
if ARGV[0]=="LOCAL_DEV"
  define_method("debug") do |var|
    p var
  end
else
  define_method("debug") do |var|
  end
end

N,K=STDIN.gets.strip.split.map(&:to_i)
D=STDIN.gets.strip.split.map(&:to_i)
n=N
while true
  s=n.to_s
  ok=true
  D.each do |d|
    if s.index(d.to_s)
      ok=false
      break
    end
  end
  if ok
    puts n
    exit
  end
  n+=1
end
