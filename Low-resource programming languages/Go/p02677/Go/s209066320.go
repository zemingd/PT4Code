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
	num, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return num
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	a := nextInt()
	b := nextInt()
	h := nextInt()
	m := nextInt()

	ans := func() float64 {
		recA := math.Pi * (float64(h)/6 + float64(m)/(60*6))
		recB := math.Pi * float64(m) / 30
		rec := math.Abs(recA - recB)

		s := float64(a*a+b*b) - float64(2*a*b)*math.Cos(rec)
		return math.Sqrt(s)
	}()

	fmt.Printf("%.10f\n", ans)
}
