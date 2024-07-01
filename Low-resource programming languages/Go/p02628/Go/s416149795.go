package main
import(
  "fmt"
  "sort"
)
func main(){
  var n, k, i int
  ans:=0
  fmt.Scan(&n, &k)
  a:=make([]int, n)
  for i=0;i<n;i++{
    fmt.Scan(&a[i])
  }
  sort.Sort(sort.IntSlice(a))
  for i=0;i<k;i++{
    ans+=a[i]
  }
  fmt.Println(ans)
}
