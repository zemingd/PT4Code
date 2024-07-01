package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func intScanner() int {
	n, _ := strconv.Atoi(Scanner())
	return n
}

func floatScanner() float64 {
	n, _ := strconv.ParseFloat(Scanner(), 64)
	return n
}
func stringToInt(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}

var mod int

func main() {
	mod = 1000000007
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	a := floatScanner()
	b := floatScanner()
	h := floatScanner()
	m := floatScanner()
	p, q := math.Cos(2.*math.Pi*(h+m/60)/12)*a, math.Sin(2.*math.Pi*(h+m/60)/12)*a
	r, s := math.Cos(2.*math.Pi*m/60)*b, math.Sin(2.*math.Pi*m/60)*b
	fmt.Println(math.Sqrt((p-r)*(p-r) + (q-s)*(q-s)))
}
