package main
import(
  "fmt"
)
func main(){
  var n, i int
  fmt.Scan(&n)
  a:=make([]int, n)
  b:=make([]int, n)
  for i=0;i<n;i++{
    fmt.Scan(&a[i])
  }
  for i=0;i<n;i++{
    fmt.Scan(&b[i])
  }
  ans:=0
  for i=0;i<n;i++{
    if a[i]>b[i]{
      ans+=a[i]-b[i]
    }
  }
fmt.Println(ans)
}
