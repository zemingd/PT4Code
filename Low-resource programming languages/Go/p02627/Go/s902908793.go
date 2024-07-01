package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	defer out.Flush()

	a := next()
	if a[0] >= 65 && a[0] <= 90 {
		fmt.Fprintf(out, "A\n")
	} else if a[0] >= 97 && a[0] <= 122 {
		fmt.Fprintf(out, "a\n")
	}
}

func next() string {
	sc.Scan()
	return sc.Text()
}
