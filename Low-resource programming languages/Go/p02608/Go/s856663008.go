package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()

	N := nextInt()

	f := make([]int, N+1)

	for x := 1; x < 100; x++ {
		for y := x; y < 100; y++ {
			for z := y; z < 100; z++ {
				n := x*x + y*y + z*z + x*y + y*z + z*x
				if n > N {
					continue
				}
				if x == y && y == z {
					f[n] += 1
				} else if x == y || y == z {
					f[n] += 3
				} else {
					f[n] += 6
				}
			}
		}
	}
	for i := 1; i <= N; i++ {
		fmt.Fprintf(out, "%d\n", f[i])
	}
}
