package main
import(
  "fmt"
)
func main(){
  var s string
  var i int
  fmt.Scan(&s)
  if s[0]!='A'{
    fmt.Println("WA")
    return
  }
  flag:=0
  if s[1]=='C' ||　s[len(s)-1]=='C'{{
    fmt.Println("WA")
    return
  }
  for i=2;i<len(s)-1;i++{
    if s[i]=='C'{
      if flag!=0{
        fmt.Println("WA")
        return
      }
      flag++
    }
  }
  if flag==1{
    fmt.Println("AC")
  }else{
    fmt.Println("WA")
  }
}
