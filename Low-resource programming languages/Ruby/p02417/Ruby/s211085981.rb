w=''
loop do
  begin
    w += gets.chomp.downcase
  rescue
    [*'a'..'z'].each{|c|puts c+' : '+w.count(c).to_s}
  end
end