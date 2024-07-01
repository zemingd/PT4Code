package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 100000007)
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(Scanner())
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i], _ = strconv.Atoi(Scanner())
	}
	ans := 0
	l := make([]int, n)
	s := make([]int, n)
	for i := 0; i < n; i++ {
		if a[i]+i < n {
			l[a[i]+i]++
		}
		if i-a[i] > 0 {
			s[i-a[i]]++
		}
	}
	for i := 0; i < n; i++ {
		ans += l[i] * s[i]
	}
	fmt.Println(ans)
}