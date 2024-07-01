#puts "最初の引数: #{ARGV[0]}"
#puts "２番目の引数: #{ARGV[1]}"

A=ARGV[0].to_i
B=ARGV[1].to_i

if A<B
    ans=A*2-1
end
if else A==B
    ans=A*2
end
else
    ans=B*2-1
end

puts "#{ans}"