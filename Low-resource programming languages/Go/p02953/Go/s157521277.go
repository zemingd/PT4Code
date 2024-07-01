package main

import (
  "bufio"
  "fmt"
  "io"
  "os"
  "strconv"
)

func Solve(stdin io.Reader, stdout io.Writer) {
  sc := bufio.NewScanner(stdin)

  /* 単語ごとに入力するならこれ */
  sc.Split(bufio.ScanWords)

  sc.Scan()
  n, _ := strconv.Atoi(sc.Text())

  ret := true

  sc.Scan()
  b, _ := strconv.Atoi(sc.Text())

  for i := 1; i < n; i++ {
    sc.Scan()
    a, _ := strconv.Atoi(sc.Text())
    if a - b < -1 {
      ret = false
    }
    b = a
  }

  if ret {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }


}

func main() {
  Solve(os.Stdin, os.Stdout)
  return
}
