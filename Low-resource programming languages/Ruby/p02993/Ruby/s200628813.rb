s = gets.chomp.split("")

def renzoku(ary)
  check = false
  (1..ary.length).map{|i|
    if ary[i] == ary[i-1] then
      check = true
    end
  }
  check
end

if renzoku(s) then
  puts "Bad"
else
  puts "Good"
end
