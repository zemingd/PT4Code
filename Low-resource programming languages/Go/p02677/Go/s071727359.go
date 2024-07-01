package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	A, B, H, M := ReadFloat64(), ReadFloat64(), ReadFloat64(), ReadFloat64()
	a := (M / 30) * math.Pi
	b := (H + M/60) / 12 * 2 * math.Pi
	dx := B*math.Cos(b-a) - A
	dy := B * math.Sin(b-a)
	fmt.Println(math.Sqrt(dx*dx + dy*dy))
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadFloat64() (f float64) { Scan(&f); return }
