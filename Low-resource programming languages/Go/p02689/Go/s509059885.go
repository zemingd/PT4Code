package main
import(
  "fmt"
)

func main(){
  var n, m, i int
  ans:=0
  fmt.Scan(&n, &m)
  h:=make([]int, n)
  a:=make([]int, m)
  b:=make([]int, m)
  x:=make([]int, n)
  for i=0;i<n;i++{
    fmt.Scan(&h[i])
  }
  for i=0;i<m;i++{
    fmt.Scan(&a[i], &b[i])
    if h[a[i]-1]>h[b[i]-1]{
      if x[a[i]-1]!=2{
        x[a[i]-1]=1
      }
      x[b[i]]=2
    }else{
      if x[b[i]-1]!=2{
        x[b[i]-1]=1
      }
      x[a[i]-1]=2
    }
  }
  for i=0;i<len(x);i++{
    if x[i]==1{
      ans++
    }
  }
  fmt.Println(ans)
}
