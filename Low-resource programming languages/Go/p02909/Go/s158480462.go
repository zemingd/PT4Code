package main
import (
  "fmt"
  "bufio"
  "os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
  sc.Scan()
  
  var (
    strScan string
    strAns string
  )
  strScan = sc.Text()
  
  switch strScan {
    case "Sunny":
      strAns = "Cloudy"
    case "Cloudy":
      strAns = "Rainy"
    case "Rainy":
      strAns = "Sunny"
  }
  
  fmt.Println(strAns)
  
}
  
  