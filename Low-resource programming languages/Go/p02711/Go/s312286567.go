package main
import "fmt"

func main(){
  in:=0
  fmt.Scanf("%d", &in)
  if in%10==7||(in/10)%10==7||(in/100)==7{
    fmt.Println("Yes")
  }else{
    fmt.Println("No")
  }
  
}