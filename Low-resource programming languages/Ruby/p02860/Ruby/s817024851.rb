n=gets.to_i
s=gets.chomp.to_s

if n%2==0
    ss=s.slice(0..n/2-1)
    b = ss+ss==s ? true:false
end

p b ? "Yes":"No"