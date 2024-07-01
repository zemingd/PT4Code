package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

func main() {
	fmt.Printf("%.10f\n", resolve(parseProblem(os.Stdin)))
}

func parseProblem(r io.Reader) (int, int, int, int) {
	const (
		initialBufSize = 100000
		maxBufSize     = 1000000
	)
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	a, b, h, m := scanInt(sc), scanInt(sc), scanInt(sc), scanInt(sc)
	return a, b, h, m
}

func resolve(a, b, h, m int) float64 {
	aR := 2 * math.Pi * (float64(h)/12.0 + float64(m)/(60.0*12))
	bR := 2 * math.Pi * (float64(m) / 60.0)
	dR := aR - bR
	dx := float64(b) - float64(a)*math.Cos(dR)
	dy := float64(a) * math.Sin(dR)
	return math.Sqrt(dx*dx + dy*dy)
}

// snip-scan-funcs
func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return int(i)
}
func scanString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}
