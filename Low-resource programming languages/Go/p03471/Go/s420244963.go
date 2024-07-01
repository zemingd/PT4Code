package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var rd = bufio.NewReaderSize(os.Stdin, 10000000)

func readLine() string {
  buf := make([]byte, 0, 10000000)
  for {
	l, p, _ := rd.ReadLine()
	buf = append(buf, l...)
	if !p {
	  break
	}
  }
  return string(buf)
}

func nextStr() string {
  sc.Scan()
  return sc.Text()
}

func nextInt() int {
  sc.Scan()
  i, _ := strconv.Atoi(sc.Text())
  return i
}

func main() {
  sc.Split(bufio.ScanWords)
  N, Y := nextInt(), nextInt()
  T := true

  for i := 0; i <= N && T; i++ {
    for j := 0; i + j <= N && T; j++ {
      k := N - (i + j)
      if i + j + k == N && 10000 * i + 5000 * j + 1000 * k == Y {
        T = false
        fmt.Println(i, j, k)
	  }
	}
  }

  if T {
    fmt.Println(-1, -1, -1)
  }
}