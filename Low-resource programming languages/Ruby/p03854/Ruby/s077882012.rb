s=gets.chomp
arr=["dream","dreamer","erase","eraser"]
check="YES"
while true
  arr.each do |word|
    wsize=word.size
    if word==s[-wsize..-1]
      s=s[0..-wsize-1]
      check="YES"
      break
    else
      check="NO"
    end
  end
  break if s==""||check=="NO"
end
puts check
