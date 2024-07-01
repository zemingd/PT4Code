package main
import(
  "fmt"
)
func main(){
  var a, b, i int
  fmt.Scan(&a, &b)
  temp:=100
  for i=1;i<a;i++{
    temp*=temp
  }
  if a==0{
    temp=1
  }
  fmt.Println(temp*b)
}
