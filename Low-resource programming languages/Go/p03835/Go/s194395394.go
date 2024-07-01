package main
import(
  "fmt"
)
func main(){
  var s, k, x, y, z int
  ans:=0
  fmt.Scan(&k, &s)
  for x=0;x<=k;x++{
    for y=0;y<=k;y++{
      z=s-x-y
      if 0<=z && z<=k{
        ans++
      }
    }
  }
  fmt.Println(ans)
}
