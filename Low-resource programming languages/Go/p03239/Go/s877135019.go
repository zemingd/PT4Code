package main
import(
  "fmt"
)
func main(){
  var n, a, i int
  ans:=1001
  fmt.Scan(&n, &a)
  x:=make([]int, n)
  y:=make([]int, n)
  for i=0;i<n;i++{
    fmt.Scan(&x[i], &y[i])
    if x[i]<ans && y[i]<=a{
      ans=x[i]
    }
  }
  if ans==1001{
    fmt.Println("TLE")
  }else{
    fmt.Println(ans)
  }
}
