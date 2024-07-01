package main

import (
	"bufio"
	"os"
	"strconv"
	"math"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	a := nextInt()
	b := nextInt()
	h := nextInt()
	m := nextInt()

	var rad float64 = 2 * math.Pi * (math.Abs( (float64(h) + (float64(m)) / 60)) / 12 - float64(m) / 60)

	if rad > math.Pi {
		rad = 2 * math.Pi - rad
	}

	var ans float64 = math.Sqrt(float64(a * a + b * b) - float64(2 * a * b) * math.Cos(rad))

	fmt.Printf("%.15f\n", ans)
}
