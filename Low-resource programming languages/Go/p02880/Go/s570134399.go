package main
import(
  "fmt"
)
func main(){
  var m, i, j, flag int
  fmt.Scan(&m)
  l:
  for i=1;i<=9;i++{
    for j=1;j<=9;j++{
      if i*j==m{
        flag=1
        break l
      }
    }
  }
  if flag==1{
    fmt.Println("Yes")
  }else{
    fmt.Println("No")
  }
}
