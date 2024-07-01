package main
import(
  "fmt"
)
func main(){
  var a, b int
  fmt.Scan(&a, &b)
  ans:=1
  i:=a
  l:
  for{
    i+=a-1
    ans++
    if i>=b{
      fmt.Println(ans)
      break l
    }
    if a==b{
      fmt.Println(1)
      break l
    }
  }
}
