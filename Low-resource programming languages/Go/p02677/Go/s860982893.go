package main

import (
	"bufio"
	"fmt"
	"math"
	"math/cmplx"
	"os"
	"strconv"
)

func configure(scanner *bufio.Scanner) {
	scanner.Split(bufio.ScanWords)
	scanner.Buffer(make([]byte, 1000005), 1000005)
}
func getNextString(scanner *bufio.Scanner) string {
	scanned := scanner.Scan()
	if !scanned {
		panic("scan failed")
	}
	return scanner.Text()
}
func getNextInt(scanner *bufio.Scanner) int {
	i, _ := strconv.Atoi(getNextString(scanner))
	return i
}
func getNextInt64(scanner *bufio.Scanner) int64 {
	i, _ := strconv.ParseInt(getNextString(scanner), 10, 64)
	return i
}
func getNextFloat64(scanner *bufio.Scanner) float64 {
	i, _ := strconv.ParseFloat(getNextString(scanner), 64)
	return i
}
func main() {
	fp := os.Stdin
	wfp := os.Stdout
	extra := 0
	if os.Getenv("I") == "IronMan" {
		fp, _ = os.Open(os.Getenv("END_GAME"))
		extra = 100
	}
	scanner := bufio.NewScanner(fp)
	configure(scanner)
	writer := bufio.NewWriter(wfp)
	defer func() {
		r := recover()
		if r != nil {
			fmt.Fprintln(writer, r)
		}
		writer.Flush()
	}()
	solve(scanner, writer)
	for i := 0; i < extra; i++ {
		fmt.Fprintln(writer, "-----------------------------------")
		solve(scanner, writer)
	}
}
func solve(scanner *bufio.Scanner, writer *bufio.Writer) {
	a := getNextInt(scanner)
	b := getNextInt(scanner)
	h := getNextInt(scanner)
	m := getNextInt(scanner)
	ca := complex(0, float64(a))
	cb := complex(0, float64(b))
	ca = rotate(ca, degToRad(float64(h)*30+0.5*float64(m)))
	cb = rotate(cb, degToRad(6*float64(m)))
	fmt.Fprintln(writer, cmplx.Abs(ca-cb))
}
func compare(a, b float64) int {
	eps := 1e-9
	if a > b+eps {
		return 1
	}
	if b > a+eps {
		return -1
	}
	return 0
}
func rotate(v complex128, theta float64) complex128 {
	r, th := cmplx.Polar(v)
	th += theta
	return cmplx.Rect(r, th)
}
func degToRad(deg float64) float64 {
	return deg * math.Pi / 180.0
}
func radTodeg(rad float64) float64 {
	return rad * 180.0 / math.Pi
}
