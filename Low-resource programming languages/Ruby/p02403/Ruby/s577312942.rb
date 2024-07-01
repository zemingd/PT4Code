arr=Array[]
loop{
  arr.clear
  h,w=STDIN.gets.split.map(&:to_i)

  if h==0 && w==0 then
    break
  end

  
  w.times{
    arr.push('#')
  }
  h.times{
    puts arr.join
  }
  puts ('')
}