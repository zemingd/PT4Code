package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, h, m,  cos, mm float64

	fmt.Scan(&a, &b, &h, &m)
	hh := h * 5
	mm = m
	if math.Abs(m-hh) > 30 {
		mm = m + 60
	}

	if math.Abs(mm-hh) <= math.Abs(hh-mm) {
		cos = math.Abs(mm - hh)
	} else {
		cos = math.Abs(hh - mm)
	}
	cos = cos * 6

	hoge := math.Cos(cos * math.Pi / 180)
	fmt.Println(a*a + b*b - 2*a*b*hoge)
}
