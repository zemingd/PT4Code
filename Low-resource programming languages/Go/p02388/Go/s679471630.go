package main

import (
  "fmt"
  "os"
  "bufio"
  "strconv"
)

func main() {
  var stdin = bufio.NewScanner(os.Stdin)
  stdin.Scan()
  var n, _ = strconv.Atoi(stdin.Text())
  var cubic = n * n * n
  fmt.Println(cubic)
}
