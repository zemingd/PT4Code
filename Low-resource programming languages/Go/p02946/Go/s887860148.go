package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func run() {
	n := nextInt()
	x := nextInt()
	for i := x - n + 1; i <= x+n-1; i++ {
		Printf("%d", i)
		if i == x+n-1 {
			Print("\n")
		} else {
			Print(" ")
		}
	}
}

// --- template ---
// Thanks https://gist.github.com/halllllll/853ab587fd82ee3ffe6f7fb7fb499695

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

// Caution: You will get unexpected result if a single token is larger than this size.
const BufferSize = 64 * 1024 * 1024

func Print(a ...interface{}) (n int, err error) {
	return fmt.Fprint(out, a...)
}

func Printf(format string, a ...interface{}) (n int, err error) {
	return fmt.Fprintf(out, format, a...)
}

func Println(a ...interface{}) (n int, err error) {
	return fmt.Fprintln(out, a...)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, err := strconv.Atoi(next())
	if err != nil {
		log.Fatal(err)
	}
	return a
}

func nextFloat() float64 {
	a, err := strconv.ParseFloat(next(), 64)
	if err != nil {
		log.Fatal(err)
	}
	return a
}

func nextInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = nextInt()
	}
	return res
}

func nextFloats(n int) []float64 {
	res := make([]float64, n)
	for i := 0; i < n; i++ {
		res[i] = nextFloat()
	}
	return res
}

func nextStrings(n int) []string {
	res := make([]string, n)
	for i := 0; i < n; i++ {
		res[i] = next()
	}
	return res
}

func main() {
	sc.Buffer(make([]byte, 0, BufferSize), BufferSize)
	sc.Split(bufio.ScanWords)
	run()
	out.Flush()
}
