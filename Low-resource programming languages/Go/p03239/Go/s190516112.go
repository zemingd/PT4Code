package main
import(
  "fmt"
)
func main(){
  var i, n, x int
  ans:=1000
  flag:=0
  fmt.Scan(&n,&x)
  c:=make([]int, n)
  t:=make([]int, n)
  for i=0;i<n;i++{
    fmt.Scan(&c[i], &t[i])
  }
  for i=0;i<n;i++{
    if c[i]<=ans&&t[i]<=x{
      ans=c[i]
      flag++
    }
  }
  if flag==0{
    fmt.Println("TLE")
  }else{
    fmt.Println(ans)
  }
}
