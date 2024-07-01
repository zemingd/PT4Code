a=t=1
M=10**9+7
`rev`.bytes{|c|c>48&&a=a*2+t;t=t*3%M}
p a%M