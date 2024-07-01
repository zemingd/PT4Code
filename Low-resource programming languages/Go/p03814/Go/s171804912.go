package main
import(
  "fmt"
)
func main(){
  var s string 
  var i, j int
  fmt.Scan(&s)
  l:
  for i=0;i<len(s);i++{
    if s[i]=='A'{
      break l
    }
  }
  k:
  for j=len(s)-1;j>i;j--{
    if s[j]=='Z'{
        break k
    }
  }
  fmt.Println(j-i+1)
}
