package main

import (
    "fmt"
    "os"
	"bufio"
	"strconv"
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wt = bufio.NewWriter(os.Stdout)
)

func main() {
	sc.Split(bufio.ScanWords)
	n, m := nextInt(), nextInt()
	s, c := make([]int, m), make([]int, m)
	for i := 0; i < m; i++ {
		s[i], c[i] = nextInt(), nextInt()
	}
	puts(guessNum(s, c, n, m))
	wt.Flush()
}

func guessNum(s, c []int, N, M int) int {
  t := make(map[int]int)
  for k, v := range s {
    // 0 になる時
    if N > 1 && v - 1 == 0 && c[k] == 0 {
      return -1
    }

    if val, ok := t[v - 1]; ok {
      if val != c[k] {
        return -1
      }
    } else {
      t[v -1] = c[k]
    }
  }

  ss := make([]int, N)
  for k, v := range t {
    ss[k] = v
  }

  var result int
  for _, v := range ss {
    result = result * 10 + v
  }

  return result
}

 
func next() string {
	sc.Scan()
	return sc.Text()
}
 
func nextInt() int {
	i, _ := strconv.Atoi(next())
	return i
}

func puts(a ...interface{}) {
	fmt.Fprintln(wt, a...)
}