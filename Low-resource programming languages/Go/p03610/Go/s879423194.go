package main
import "fmt"

func main(){
  var s string
  fmt.Scan(&s)
  var ans string
  for i:=0; i<len(s);i+=2 {
    z:=string(s[i])
    ans=ans+z
  }

  fmt.Println(ans)
 }

