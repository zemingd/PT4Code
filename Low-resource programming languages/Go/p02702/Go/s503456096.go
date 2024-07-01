package main

import (
	"fmt"
	"strconv"
)

var S string

func main() {
	fmt.Scan(&S)
	a := make([]int, len(S))
	for i, v := range S {
		a[i], _ = strconv.Atoi(string(v))
	}
	b := map[int]int{
		len(S): 0,
	}
	c := 1
	d := map[int]int{
		0: 1,
	}
	res := 0
	for i := len(S) - 1; i >= 0; i-- {
		b[i] = (a[i]*c + b[i+1]) % 2019
		c *= 10
		if v, ok := d[b[i]]; ok {
			res += v
		}
		d[b[i]]++
	}

	fmt.Println(res)
}
