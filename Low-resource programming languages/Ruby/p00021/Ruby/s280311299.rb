gets.to_i.times do
f=gets.chomp.split(' ').map(&:to_r)
  begin
      if ((f[3]-f[1])/(f[2]-f[0]))==((f[7]-f[5])/(f[6]-f[4]))
        puts('YES')
      else
         puts('NO')
      end
  rescue
   puts('YES')
  end
end