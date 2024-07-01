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

func nextInt() uint64 {
	sc.Scan()
	i, e := strconv.ParseUint(sc.Text(),10, 64)
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	n := nextInt()
	c := 0

	for p := uint64(2); p <= n; p++ {
		if n % p == 0 {
			e := 1
			for {
				z := uint64(math.Pow(float64(p), float64(e)))
				if n % z != 0 { break }
				n /= z
				e++
				c++
			}
		}
	}

	fmt.Println(c)
}
