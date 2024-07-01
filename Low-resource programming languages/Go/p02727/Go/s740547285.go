package main

import (
	"fmt"
	"sort"
  "bufio"
  "strconv"
  "os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
  sc.Split(bufio.ScanWords)
  x, y, a, b, c := nextInt(), nextInt(), nextInt(), nextInt(), nextInt()
  p, q, r := nextInts(a), nextInts(b), nextInts(c)

  p = p[len(p)-x:]
  q = q[len(q)-y:]

  sort.Ints(p)
  sort.Ints(q)
  var d []int
  d = append(d, p...)
  d = append(d, q...)
  d = append(d, r...)
  sort.Ints(d)

  var ans int
	for i := 0; i < x+y; i++ {
    ans += d[len(d)-1]
    d = d[:len(d)-1]
	}
	fmt.Println(ans)
}

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func nextInts(n int) []int {
	sl := make([]int, n)
	for i := range sl {
		sl[i] = nextInt()
	}
	return sl
}
