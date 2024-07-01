w=''
loop do
  begin
    w += gets.chomp.downcase
  rescue
    break
  end
end
[*'a'..'z'].each{|c|puts c+' : '+w.count(c).to_s}