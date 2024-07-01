package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)
	sc.Split(bufio.ScanWords)
	a, _ := strconv.Atoi(stringLineScan())
	b, _ := strconv.Atoi(stringLineScan())
	c, _ := strconv.Atoi(stringLineScan())
	d, _ := strconv.Atoi(stringLineScan())
	e, _ := strconv.Atoi(stringLineScan())
	f, _ := strconv.Atoi(stringLineScan())
	m := 0.0
	g := 0
	h := 0
	for i := 0; i <= f/(b*100); i++ {
		x := f - i*b*100
		for j := 0; j <= x/(a*100); j++ {
			w := b*i + a*j
			s := smaller(w*e, f-100*w)
			for k := 0; k <= s/d; k++ {
				t := k*d + (s-k*d)/c*c
				u := float64(t) / float64(100*w+t)
				if u >= m {
					g = 100*w + t
					h = t
					m = u
				}
			}
		}
	}
	fmt.Println(g, h)
}
func smaller(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}
