package main
 
import (
  "fmt"
  "os"
  "bufio"
)
 
func main() {
 reader := bufio.NewReader(os.Stdin)
  str, _ := reader.ReadString('\n')
  length := len(str)
  mid := length / 2
  hugs := 0
  for i := 0; i <= mid; i++ {
    if str[i] != str[length-1-i] {
      hugs++
    }
  }
  fmt.Println(hugs)
}