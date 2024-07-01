package main
import(
  "fmt"
)
func main(){
  var n, i, j, temp int
  fmt.Scan(&n)
  a:=make([]int, n)
  ans:=0
  for i=0;i<n;i++{
    fmt.Scan(&a[i])
  }
  temp=n*(n-1)
  temp/=2
  for i=0;i<n;i++{
    if a[i]!=0{
      for j=i+1;j<n;j++{
        if a[j]!=0{
          ans+=a[i]*a[j]
        }
      }
    }
  }
  fmt.Println(ans)
}
