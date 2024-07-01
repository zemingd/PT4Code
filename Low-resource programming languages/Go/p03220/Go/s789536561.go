package main
import(
  "fmt"
  "math"
)
func main(){
  var t, a, temp float64
  var i, n, ans int
  fmt.Scan(&n, &t, &a)
  tmp:=100001.0
  h:=make([]float64, n)
  for i=0;i<n;i++{
    fmt.Scan(&h[i])
    temp=t-(h[i]*0.006)
    if math.Abs(a-temp)<tmp{
      ans=i+1
      tmp=math.Abs(a-temp)
    }
  }
  fmt.Println(ans)
}
