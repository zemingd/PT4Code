package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

var (
	scanner *bufio.Scanner
	buffer  *bufio.Writer
	writer  io.Writer
)

func main() {
	defer flush()
	initWordScanner()
	initBufWriter()

	a := readInt()
	b := readInt()
	c := readInt()
	x := readInt()

	for i := 0; i <= x; i++ {
		for j := 0; j <= x-i; j++ {
			for k := 0; k <= x-i-j; k++ {
				ta := a * int(math.Pow(2, float64(i)))
				tb := b * int(math.Pow(2, float64(j)))
				tc := c * int(math.Pow(2, float64(k)))
				if ta < tb && tb < tc {
					println("Yes")
					flush()
					os.Exit(0)
				}
			}
		}
	}

	println("No")
}

func initLineScanner() {
	scanner = bufio.NewScanner(os.Stdin)
	buf := make([]byte, 1e4)
	scanner.Buffer(buf, bufio.MaxScanTokenSize)
}

func initWordScanner() {
	initLineScanner()
	scanner.Split(bufio.ScanWords)
}

func readLine() string {
	if scanner.Scan() {
		return scanner.Text()
	}
	return ""
}

func readInt() int {
	scanner.Scan()
	n, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return n
}

func readFloat() float64 {
	scanner.Scan()
	n, err := strconv.ParseFloat(scanner.Text(), 64)
	if err != nil {
		panic(err)
	}
	return n
}

func readRunes() []rune {
	scanner.Scan()
	var ns []rune
	for _, v := range scanner.Text() {
		ns = append(ns, v)
	}
	return ns
}

func readString() string {
	if scanner.Scan() {
		return scanner.Text()
	}
	return ""
}

func readStrings() []string {
	scanner.Scan()
	var ss []string
	for _, v := range scanner.Text() {
		ss = append(ss, string(v))
	}
	return ss
}

func initWriter() {
	buffer = nil
	writer = os.Stdout
}

func initBufWriter() {
	buffer = bufio.NewWriter(os.Stdout)
	writer = buffer
}

func printf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(writer, f, args...)
}

func println(args ...interface{}) (int, error) {
	return fmt.Fprintln(writer, args...)
}

func eprintf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(os.Stderr, f, args...)
}

func eprintln(args ...interface{}) (int, error) {
	return fmt.Fprintln(os.Stderr, args...)
}

func flush() {
	if writer != nil {
		buffer.Flush()
	}
}

func string2int(s string) int {
	n, e := strconv.Atoi(s)
	if e != nil {
		panic(e)
	}
	return n
}

func int2string(n int) string {
	s := strconv.Itoa(n)
	return s
}

func string2float(s string) float64 {
	n, e := strconv.ParseFloat(s, 64)
	if e != nil {
		panic(e)
	}
	return n
}

func sum(ns []int) int {
	s := 0
	for _, n := range ns {
		s += n
	}
	return s
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b int) int {
	return a / gcd(a, b) * b
}
