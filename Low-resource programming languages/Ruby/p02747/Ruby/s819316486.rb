# S
# hiが1つ以上入っていればYes, No
# hii
S = gets
num = S.length / 2 
if num == 1 
  if S.match(/(hi){1}/) != nil && S.match(/[h+]hi/) == nil && S.match(/hi[i+]/) == nil
    puts "Yes"
  else
    puts "No"
  end
elsif num == 2
  if S.match(/(hi){2}/) != nil && S.match(/[h+]hi/) == nil && S.match(/hi[i+]/) == nil
    puts "Yes"
  else
    puts "No"
  end
elsif num == 3
  if S.match(/(hi){3}/) != nil && S.match(/[h+]hi/) == nil && S.match(/hi[i+]/) == nil
    puts "Yes"
  else
    puts "No"
  end
elsif num == 4
  if S.match(/(hi){4}/) != nil && S.match(/[h+]hi/) == nil && S.match(/hi[i+]/) == nil
    puts "Yes"
  else
    puts "No"
  end
elsif num == 5
  if S.match(/(hi){5}/) != nil && S.match(/[h+]hi/) == nil && S.match(/hi[i+]/) == nil
    puts "Yes"
  else
    puts "No"
  end
end