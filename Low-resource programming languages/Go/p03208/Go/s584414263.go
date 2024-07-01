package main
import(
  "fmt"
  "sort"
)
func main(){
  var n, i, k, temp int
  fmt.Scan(&n,&k)
  a:=make([]int, n)
  for i=0;i<n;i++{
    fmt.Scan(&a[i])
  }
  ans:=100000000
  sort.Sort(sort.IntSlice(a))
  for i=0;i<n-k;i++{
    temp=a[i+k-1]-a[i]
    if temp<ans{
      ans=temp
    }
  }
  fmt.Println(ans)
}