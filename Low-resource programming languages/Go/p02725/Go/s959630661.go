package main
import(
  "fmt"
)
func main(){
  var k, n, i, b, max int
  ans:=0
  fmt.Scan(&k, &n)
  a:=make([]int, n)
  for i=0;i<n;i++{
    fmt.Scan(&a[i])
    if i==1{
      max=a[1]-a[0]
    }
    if i!=0{
      b=a[i]-a[i-1]
      ans+=b
      if max<b{
        max=b
      }
    }
  }
  b=k-a[n-1]+a[0]
  ans+=b
  if max<b{
    ans-=b
  }else{
    ans-=max
  }
  fmt.Println(ans)
}
