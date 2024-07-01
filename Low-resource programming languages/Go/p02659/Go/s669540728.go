package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func nextFloat() float64 {
	sc.Scan()
	f, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func nextInt() uint64 {
	sc.Scan()
	i, e := strconv.ParseUint(sc.Text(),10, 64)
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	a := nextInt()
	b := nextFloat()
	fmt.Println(uint64(math.Trunc(float64(a) * b)))
}