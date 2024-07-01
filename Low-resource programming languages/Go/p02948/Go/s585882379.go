package main

import (
  "bufio"
  "fmt"
  "io"
  "os"
  "sort"
  "strconv"
)

type bytes [][]int

func (p bytes) Len() int           { return len(p) }
func (p bytes) Less(i, j int) bool {
  if p[i][1] == p[j][1] {
    return p[i][0] > p[j][0]
  } else {
    return p[i][1] > p[j][1]
  }
}
func (p bytes) Swap(i, j int)      { p[i], p[j] = p[j], p[i] }

func Solve(stdin io.Reader, stdout io.Writer) {
  sc := bufio.NewScanner(stdin)
  sc.Split(bufio.ScanWords)

  sc.Scan()
  n, _ := strconv.Atoi(sc.Text())

  sc.Scan()
  m, _ := strconv.Atoi(sc.Text())

  a := make([][]int, n)

  for i := 0; i < n; i++ {
    a[i] = make([]int, 2)
    sc.Scan()
    a[i][0], _ = strconv.Atoi(sc.Text())

    sc.Scan()
    a[i][1], _ = strconv.Atoi(sc.Text())
  }

  sort.Sort(bytes(a))

  ret := 0
  for m > 0 && len(a) > 0 {
    if a[0][0] <= m {
      ret += a[0][1]
      m--
    }
    a = a[1:]
  }

  fmt.Println(ret)

}

func main() {
  Solve(os.Stdin, os.Stdout)
  return
}
