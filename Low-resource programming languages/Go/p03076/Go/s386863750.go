package main

import (
  "fmt"
  "bufio"
  "os"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() int {
  sc.Scan()
  data, _ := strconv.Atoi(sc.Text())
  return data
}

func main() {
  var a [5]int
  a[0] = nextLine()
  a[1] = nextLine()
  a[2] = nextLine()
  a[3] = nextLine()
  a[4] = nextLine()

  var last = a[0]
  var index = 0
  var total = 0
  for i := 1; i < 5; i++ {
    var c = a[i] % 10
    if c < last % 10 && c != 0 {
      last = a[i]
      index = i
    }
  }

  fmt.Println(index)
