package main
import(
  "fmt"
)
func main(){
  var a, b, temp int
  fmt.Scan(&a,&b)
  i:=1
  l:
  for{
    temp=a*i
    if temp>=b{
      break l
    }else{
      i++
    }
  }
  fmt.Println(i)
}
