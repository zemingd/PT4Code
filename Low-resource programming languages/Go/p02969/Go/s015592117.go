package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)

func main() {
  stdin := bufio.NewScanner(os.Stdin)
  stdin.Scan()
  text := stdin.Text()
  
  r, _ := strconv.Atoi(text)
  
  result := 3 * r * r
  fmt.Println(result)
}