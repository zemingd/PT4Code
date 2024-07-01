package main

import (
  "fmt"
  "strings"
  "bufio"
  "os"
  "strconv"
)

func main(){
  scanner := bufio.NewScanner(os.Stdin)
  scanner.Scan()
  date := strings.Replace(scanner.Text(),"/","",2)
  diff,_ = strconv.Atoi(date)
  diff = diff-20190430
  if diff < 0 {
    fmt.Println("Heisei")
  } else {
    fmt.Println("TBD")
  }
}