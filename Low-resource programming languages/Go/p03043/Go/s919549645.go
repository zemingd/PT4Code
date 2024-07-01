package main
import(
  "fmt"
)
func main(){
  var temp, ans, n, i, j, k float64
  ans=0
  fmt.Scan(&n, &k)
  for i=1;i<=n;i+=1{
    temp=1/n
    j=i
    l:
    for{
      temp*=0.5
      j*=2
      if j>=k{
        break l
      }
    }
    ans+=temp
  }
  fmt.Println(ans)
}
