package main
import (
  "fmt"
  "os"
  "bufio"
  "strings"
)
func main() {
  stdin := bufio.NewScanner(os.Stdin)
  stdin.Scan()
  text := stdin.Text()
  s, t := strings.Split(text, " ")
  fmt.Println(t, s)
}
