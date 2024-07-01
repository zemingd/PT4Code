package main

import (
	"fmt"
	"github.com/openark/golib/math"
)


func main() {
	var p,q,r int
	fmt.Scan(&p, &q, &r)
	ans := math.MinInt(math.MinInt(p+q, p+r), q+r)
	fmt.Println(ans)
}