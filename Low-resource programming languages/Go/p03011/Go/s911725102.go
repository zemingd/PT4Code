package main

import (
	"fmt"
	"math"
)

func main() {
	var p,q,r int 
	fmt.Scanf("%d %d %d", &p,&q,&r)
	fmt.Print(int(math.Min(float64(q+r), math.Min(float64(p+q),float64(p+r)))))
}