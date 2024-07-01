package main

import (
	"fmt"
	"strings"
	"strconv"
)

func main() {
	var a int
	var st string
	fmt.Scan(&a)
	fmt.Scan(&st)
	sts := strings.Split(st, " ")
	var total float64
	for i := 0; i < a; i++ {
		v := sts[i]
		n, _ := strconv. ParseFloat(v, 64)
		var x float64
		x = 1 / n
		total = total + x
	}
	
	var ans float64
	ans = 1 / total
	fmt.Println(ans)
}
