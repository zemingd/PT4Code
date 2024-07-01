package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func calc(n, k, i int) (res int) {
	m := n - k + i
  o := n-k
  p1 := perm(m,m)
  p2 := perm(o,o)
  c := comb(k-1,i-1)
  res = p1/(p2*c)
	return
}
func perm(a, b int) (res int) {
	res = 1
	for i := a; i > a-b; i-- {
		res *= i
	}
	return
}

func comb(a, b int) (res int) {
	res = perm(a, b)
	for i := 2; i <= b; i++ {
		res /= i
	}
	return
}

func main() {
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(read())
	k, _ := strconv.Atoi(read())
	for i := 1; i <= k; i++ {
		fmt.Println(calc(n, k, i))
	}
}
