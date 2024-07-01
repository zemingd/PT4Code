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

	A, B, C := nextInt(), nextInt(), nextInt()
	K := nextInt()
	count := 0

	for A >= B {
		B *= 2
		count++
	}

	for B >= C {
		C *= 2
		count++
	}

	if count <= K {
		fmt.Fprint(out, "Yes")
	} else {
		fmt.Fprint(out, "No")
	}
}
