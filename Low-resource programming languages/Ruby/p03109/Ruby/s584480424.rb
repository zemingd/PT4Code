string = ARGV[0]
slist = string.split('/')
if slist[1].to_i < 5
  p 'heisei'
else
  p 'TBD'
end
