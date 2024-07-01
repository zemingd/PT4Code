package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000007)
	sc.Split(bufio.ScanWords)
	k, _ := strconv.Atoi(Scanner())
	q := make([][]int, 9)
	for i := 1; i < 10; i++ {
		q[i-1] = []int{i}
	}
	c := 0
	p := []int{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
	for {
		if len(q) >= k {
			ans := q[k-1]
			y := make([]string, len(ans))
			for i := 0; i < len(ans); i++ {
				y[i] = strconv.Itoa(ans[i])
			}
			fmt.Println(strings.Join(y, ""))
			break
		}
		r := q[c]
		last := r[len(r)-1]
		for _, i := range p {
			if abs(last-i) <= 1 {
				x := make([]int, len(r))
				copy(x, r)
				x = append(x, i)
				q = append(q, x)
			}
		}
		c++
	}
}
func abs(x int) int {
	if x < 0 {
		x = -x
	}
	return x
}
