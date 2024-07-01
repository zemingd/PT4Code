package main
import(
  "fmt"
)
func main(){
  var n, i int
  ans:=0
  con:=1
  fmt.Scan(&n)
  a:=make([]int, n)
  for i=0;i<n;i++{
    fmt.Scan(&a[i])
  }
  for i=0;i<n;i++{
    if con==a[i]{
      ans++
      con++
    }
  }
  if ans==0{
    fmt.Println(-1)
  }else{
    fmt.Println(n-ans)
  }
}
