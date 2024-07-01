package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

// AtCoder Functions
var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	sc.Scan()
	return sc.Text()
}
func nextFloat64() float64 {
	sc.Scan()
	f, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func main() {
	sc.Split(bufio.ScanWords)
	A := nextFloat64()
	B := nextFloat64()
	numPlug := math.Floor(B / (A - 1))
	numEmpty := numPlug*(A-1) + 1

	if numEmpty < B {
		numPlug++
	}
	fmt.Println(numPlug)
}
