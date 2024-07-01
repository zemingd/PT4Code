# https://atcoder.jp/contests/abc098/tasks/abc098_b

if ARGV[0]=="LOCAL_DEV"
  define_method("debug") do |var|
    p var
  end
else
  define_method("debug") do |var|
  end
end

N=STDIN.gets.strip.to_i
S=STDIN.gets.strip
ans=0
(1..S.size-1).each do |i|
  s=S[0,i]
  t=S[i,N]
  shash = Hash.new(0)
  thash = Hash.new(0)
  s.chars do |a|
    shash[a]+=1
  end
  t.chars do |a|
    thash[a]+=1
  end
  c=0
  ('a'..'z').each do |a|
    if shash[a]>0 && thash[a]>0
      c+=1
    end
  end
  ans=[ans,c].max
end

puts ans
