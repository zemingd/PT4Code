package main

import (
	"fmt"
	"math"
	"strconv"
	"strings"
)

func main() {
	var s string
	_, _ = fmt.Scan(&s)

	sl := strings.Split(s, "")
	min := 999
	n := 753
	for i := 0; i < len(sl) -2; i++ {
		t, _ := strconv.Atoi(strings.Join(sl[i:i+3], ""))
		d := int(math.Abs(float64(n-t)))
		if d < min {
			min = d
		}
	}
	fmt.Println(min)
}
