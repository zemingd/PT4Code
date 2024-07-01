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
	sc.Buffer(buf, 1000000009)
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(Scanner())
	k, _ := strconv.Atoi(Scanner())
	r, _ := strconv.Atoi(Scanner())
	s, _ := strconv.Atoi(Scanner())
	p, _ := strconv.Atoi(Scanner())
	t := Scanner()
	ans := 0
	for i := 0; i < k; i++ {
		f := false
		ans += point(string(t[i]), r, s, p)
		for j := i + k; j < n; j += k {
			if t[j-k] == t[j] && !f {
				f = true
			} else {
				ans += point(string(t[j]), r, s, p)
				f = false
			}
		}
	}
	fmt.Println(ans)
}
func point(x string, r int, s int, p int) int {
	if x == "r" {
		return p
	} else if x == "s" {
		return r
	} else {
		return s
	}
}
