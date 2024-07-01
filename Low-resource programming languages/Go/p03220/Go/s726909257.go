package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

// T - Hx * 0.006
// T A
// Hi ...

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	num, _ := strconv.Atoi(nextLine())
	ta := strings.Split(nextLine(), " ")
	t, _ := strconv.ParseFloat(ta[0], 64)
	a, _ := strconv.ParseFloat(ta[1], 64)
	h := strings.Split(nextLine(), " ")
	var n = 0
	var diff = 0.0
	for i := 0; i < num; i++ {
		h, _ := strconv.ParseFloat(h[i], 64)
		if i == 0 {
			n = 1
			tmp := t - h*0.006
			if a > tmp {
				diff = math.Abs(a - tmp)
			} else {
				diff = math.Abs(tmp - a)
			}
		} else {
			tmp := t - h*0.006
			var tmpd = 0.0
			if a > tmp {
				tmpd = math.Abs(a - tmp)
			} else {
				tmpd = math.Abs(tmp - a)
			}
			if diff > tmpd {
				n = i + 1
				diff = tmpd
			}
		}
	}
	fmt.Println(n)
}
