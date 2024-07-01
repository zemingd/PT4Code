package main
 
import (
  "fmt"
  "os"
  "bufio"
)
 
func main() {
  scanner := bufio.NewScanner(os.Stdin)
  scanner.Scan()
  str := scanner.Text()
  
  switch str {
    case "SAT": fmt.Println(1)
    case "FRI": fmt.Println(2)
    case "THU": fmt.Println(3)
    case "WED": fmt.Println(4)
    case "TUE": fmt.Println(5)
    case "MON": fmt.Println(6)
    case "SUN": fmt.Println(7)
  }
}
