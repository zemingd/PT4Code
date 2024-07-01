package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

type shop struct {
	id    int
	name  string
	score int
}

func main() {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	s.Scan()
	n, _ := strconv.Atoi(s.Text())
	s.Scan()
	k, _ := strconv.Atoi(s.Text())

	var pro, ans float64
	ans = 0
	for i := 1; i <= n; i++ {
		if i < k {
			t := math.Ceil(math.Log2(float64(k / i)))
			pro = (1 / float64(n)) * (1 / math.Pow(2, float64(t)))
			ans += pro
		} else {
			pro = (1 / float64(n))
			ans += pro
		}
	}
	fmt.Printf("%.9g", ans)
}
