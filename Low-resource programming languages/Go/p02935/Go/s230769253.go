package main
import(
  "fmt"
  "sort"
)
func main(){
  var n, i int
  var temp float64
  fmt.Scan(&n)
  a:=make([]float64, n)
  for i=0;i<n;i++{
    fmt.Scan(&a[i])
  }
  sort.Float64Slice(a).Sort()
  for i=0;i<n-1;i++{
    temp=(a[i]+a[i+1])/2
    a[i+1]=temp
  }
  fmt.Println(temp)
}
