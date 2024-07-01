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
	sc.Buffer([]byte{}, math.MaxInt64)
}

func readFloat64() float64 {
	sc.Scan()
	r, _ := strconv.ParseFloat(sc.Text(), math.MaxInt64)
	return r
}

func main() {
	n, k := readFloat64(), readFloat64()
	d, num := 0, 1.0
	for {
		if n <= num {
			break
		}
		num = num * k
		d++
	}
	fmt.Println(int(d))
}
