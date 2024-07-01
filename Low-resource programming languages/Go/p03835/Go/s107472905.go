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
  K, S := nextInt(), nextInt()
  cnt := 0
  for i := 0; i <= K; i++ {
    for j := 0; j <= K; j++ {
		k := S - (i + j)
		if k >= 0 && k <= K{
		  cnt++
		}
	}
  }
  fmt.Println(cnt)
}