a = gets
b = gets
if /^#{a}[a-z]{1}/ === b then
  p 'Yes'
else
  p 'No'
end
