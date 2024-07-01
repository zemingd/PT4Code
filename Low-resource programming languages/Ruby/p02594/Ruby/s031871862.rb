#あなたは、室温が 30度以上のとき、またそのときに限り、冷房の電源を入れます。
#今の室温は X度です。冷房の電源を入れますか？
tem=gets.to_i
if tem>=30
  puts "Yes"
else
  puts "No"
end
