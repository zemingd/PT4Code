package main
import "fmt"

func main(){
  var age int
  var money int
  
  fmt.Scan(&age)
  fmt.Scan(&money)
  
  if age >= 13{
    fmt.Printf("%d", money)
  } else if (6 <= age) && (age <= 12) {
    fmt.Printf("%d", money/2)
  } else if age <= 5 {
    money=0;
    fmt.Printf("%d", money)
  }
}