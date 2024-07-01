package main

import("fmt")

func main(){
  var n int
  fmt.Scan(&n)
  
  a:=make([]int,n)
  for i:=0; i<n; i++{
    fmt.Scanf("%d",&a[i])
  }
  
  b:=make([]int,n)
  ans:=0
  for i:=0; i<n; i++{
    fmt.Scanf("%d",&b[i])
    ans+=b[i]
  }
  
  c:=make([]int,n-1)
  for i:=0; i<n-1; i++{
    fmt.Scanf("%d",&c[i])
  }
  
  for i:=0;i<n-1;i++{
    if a[i+1]-a[i]==1 {
      x:=a[i]-1
      ans+=c[x]
    }
  }
  fmt.Print(ans)
}