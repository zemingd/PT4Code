package main

import (
  "fmt"
  "bufio"
  "os"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() int64 {
  sc.Scan()
  data, _ := strconv.ParseInt(sc.Text(), 10, 64)
  return data
}

func main() {
  var num = nextLine()
  args := []int64{nextLine(),nextLine(),nextLine(),nextLine(),nextLine()}

  var max = num / args[0]
  for _, arg := range args {
    var value = num / arg
    if value > max {
      max = value
    }
  }
  fmt.Println(max + 5)
}

