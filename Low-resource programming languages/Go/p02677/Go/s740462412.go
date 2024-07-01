package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var A,B,H,M int
	fmt.Scan(&A,&B,&H,&M)

	s := float64(60 * H + M) / 2
	l := float64(6*M)
	angle := math.Abs(l - s)
	if angle > float64(180){
		angle = float64(360) - angle
	}

	lh := A
	sh := B
	if B > A{
		lh = B
		sh = A
	}

	cos := math.Cos((angle * math.Pi) /180)
	sin := math.Sin((angle * math.Pi) /180)
	a := float64(sh) * sin
	b := float64(lh) - float64(sh) * cos
	res := math.Sqrt(a*a + b*b)

	
	x := fmt.Sprintf("%g",res)
	y, _ := strconv.ParseFloat(x, 64)
	fmt.Println(y)

	
}
