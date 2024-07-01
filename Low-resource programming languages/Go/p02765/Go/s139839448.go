package main
import "fmt"
func main(){
  n,r:=0,0
  fmt.Scanf("%d %d", &n,&r)
  if n<10{
    fmt.Println(100*(10-n)+r)
  }else{
    fmt.Println(r)
  }
  
}