package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}

	return i
}
func main() {
	sc.Split(bufio.ScanWords)
	a := nextInt()
	b := nextInt()
	h := nextInt()
	m := nextInt()

	var hf = float64(h)
	var mf = float64(m)
	var difd float64

	_ = a
	_ = b
	//	difr = float64(m)
	//fmt.Println("h base=", hf, " = ", float64(hf*360.0/12.0))
	//fmt.Println("h =", hf, " = ", float64(hf*360.0/12.0)+float64(mf*0.5))
	//fmt.Println("m=", mf, " = ", float64(mf*360.0/60.0))

	difd = float64(hf*360.0/12.0) + float64(mf*0.5) - float64(mf*360.0/60.0)
	//fmt.Println("dig=%.2f", difd, " rad=%.2f", difd*math.Pi/180.0)

	// 余弦定理
	//fmt.Printf("%.2f", math.Cos(difd*math.Pi/180.0))

	var c float64
	//	c = math.Sqrt(float64(a*a+b*b) - 2.0*float64(a*b)*math.Cos(difd*180/math.Pi))
	c = math.Sqrt(float64(a*a+b*b) - 2.0*float64(a*b)*math.Cos(difd*math.Pi/180.0))

	fmt.Printf("%.11f", c)
}
