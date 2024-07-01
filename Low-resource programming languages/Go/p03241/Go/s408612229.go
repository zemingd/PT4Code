package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var s = bufio.NewScanner(os.Stdin)

func next() int64 {
	s.Scan()
	i, _ := strconv.ParseInt(s.Text(), 10, 64)
	return i
}

func main() {
	s.Split(bufio.ScanWords)
	N := next()
	M := next()

	yaku := []int64{1}
	m := M
	var i int64
	for i = 2; i < m; i++ {
		if m%i == 0 {
			yaku = append(yaku, i)
			m = m / i
		}
	}

	for _, d := range yaku {
		if M%d != 0 {
			continue
		}

		p := M / d
		if p >= N {
			fmt.Println(d)
			return
		}
	}
}
