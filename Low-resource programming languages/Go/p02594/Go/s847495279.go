package main
import "fmt"

func main(){
  var temperature int
  fmt.Scan(&temperature)
  if(temperature >= 30){
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}  