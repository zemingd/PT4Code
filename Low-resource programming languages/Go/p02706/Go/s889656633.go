package main
import(
  "fmt"
)
func main(){
  var n, m, i int 
  ans:=0
  fmt.Scan(&m, &n)
  a:=make([]int, n)
  for i=0;i<n;i++{
    fmt.Scan(&a[i])
    ans+=a[i]
  }
  if m-ans<0{
    fmt.Println(-1)
  }else{
    fmt.Println(m-ans)
  }
}