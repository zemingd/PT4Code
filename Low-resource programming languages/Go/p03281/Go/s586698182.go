package main
import(
  "fmt"
)
func main(){
  var n, i, j int
  ans:=0
  temp:=0
  fmt.Scan(&n)
  for i=1;i<=n;i+=2{
    for j=1;j<=i;j++{
      if i%j==0{
        temp++
      }
    }
    if temp==8{
      ans++
    }
    temp=0
  }
  fmt.Println(ans)
}
