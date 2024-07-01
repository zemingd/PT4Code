loop{
h,w=gets.split.map &:to_i
if h==0&&w==0
break
end
h.times{
w.times{
print"#"
}
puts"\n"
}
puts"\n"
}