package main
import(
  "fmt"
)
func main(){
  var a, b, c string
  fmt.Scanf("%1s, %1s, %1s", &a, &b, &c)
  if a=="7"||b=="7"||c=="7"{
    fmt.Println("Yes")
  }else{
    fmt.Println("No")
  }
}
