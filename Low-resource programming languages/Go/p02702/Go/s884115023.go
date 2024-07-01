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
	s := Scanner()
	m := make([]int, 2019)
	m[0] = 1
	ans := 0
	for i := 0; i < len(s); i++ {
		x, _ := strconv.Atoi(string(s[i]))
		y := make([]int, 2019)
		for j := 0; j < 2019; j++ {
			y[(j*10+x)%2019] += m[j]
		}
		copy(m, y)
		m[0]++
		ans += m[0] - 1
	}
	fmt.Println(ans)
}
