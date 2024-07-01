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
  sc.Split(bufio.ScanWords)

  sc.Scan()
  k, _ := strconv.Atoi(sc.Text())

  sc.Scan()
  x, _ := strconv.Atoi(sc.Text())

  for i := x - k + 1; i < x + k; i++ {
    _, _ = fmt.Fprintf(stdout, "%d ", i)
  }
  _, _ = fmt.Fprintf(stdout, "\n")

}

func main() {
  Solve(os.Stdin, os.Stdout)
  return
}
