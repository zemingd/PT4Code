package main
import(
  "fmt"
)
func main(){
  var n, i, temp, ans int64
  temp=1
  ans=0
  fmt.Scan(&n)
  if n<2{
    fmt.Println(0)
    return
  }
  for i=n;i>=2;i-=2{
    temp*=i
  }
  l:
  for{
    if temp%10==0{
      ans++
      temp/=10
    }else{
      break l
    }
  }
  fmt.Println(ans)
}
