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

func intScanner() int {
	n, _ := strconv.Atoi(Scanner())
	return n
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000007)
	sc.Split(bufio.ScanWords)
	n := intScanner()
	m := intScanner()
	q := intScanner()
	abcd := make([][]int, q)
	for i := 0; i < q; i++ {
		abcd[i] = []int{intScanner(), intScanner(), intScanner(), intScanner()}
		abcd[i][0]--
		abcd[i][1]--
	}
	st := make([][]int, m)
	for i := 1; i <= m; i++ {
		st[i-1] = []int{i}
	}
	ans := 0
	for len(st) != 0 {
		x := st[len(st)-1]
		st = st[:len(st)-1]
		if len(x) == n {
			score := 0
			for i := 0; i < q; i++ {
				if x[abcd[i][1]]-x[abcd[i][0]] == abcd[i][2] {
					score += abcd[i][3]
				}
			}
			if ans < score {
				ans = score
			}
		} else {
			for i := x[len(x)-1]; i <= m; i++ {
				y := make([]int, len(x))
				copy(y, x)
				st = append(st, append(y, i))
			}
		}
	}
	fmt.Println(ans)
}
