require 'pp'

##################

inputType = :singleLine
#  inputType = :nLines

def main(s)
  r = []
  c = 0
  while !(s =~ /^S*$/)
    ppp "s=",s
    if (s =~ /(R+)(.*)$/) then
      x = $1.size
      s = $2
      if (x > c) then
        c = x
      end
    end
  end
  r.push c.to_s
  return r
end

###################

TEST=false

def ppp(msg, val)
  if (TEST) then
    print msg
    pp val
  end
end

target = nil
if (ARGV.size == 0) then
  f = STDIN
end
if (ARGV.size > 0) then
  f = open(ARGV[0])
end
if (ARGV.size > 1) then
  target = ARGV[1].to_i
end

t = 1
ng = []
while true
  if (inputType == :singleLine) then
    a = f.gets
    if ! a then
      exit
    end
    a.chomp!
    query = a
  elsif (inputType == :nLines) then
    a = f.gets
    if ! a then
      exit
    end
    n = a.chomp.to_i
    query = n.map { | i |
      f.gets.chomp
    }    
  end
  
  aa = f.gets
  if ! aa then
    r = main(query) 
    r.each { | x | puts x }
    exit
  elsif ( aa.chomp == "---") then
    oks = []
    while true
      s = f.gets.chomp
      if (s == "---") then
        break
      end
      oks.push s
    end

    if (target == nil || t == target) then
      if target then
        TEST = true
      end

      puts "--- " + t.to_s + " ---"
      ppp("QUERY=", query)
      r = main(query)    

      if r.join('\n') == oks.join('\n') then
        puts "RESULT:"
        r.each { | x | puts x }
        puts "OK"
      else
        puts "RESULT:NG"
        r.each { | x | puts x }
        puts "NG!!!!!!!!!"
        ng.push t
      end
    end
  end
  t = t + 1
end
puts "---"
puts "NG targes = " + ng.to_s
