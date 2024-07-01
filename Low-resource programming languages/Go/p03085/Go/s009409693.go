package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
)

func Solve(stdin io.Reader, stdout io.Writer) {
	sc := bufio.NewScanner(stdin)

	/* 入力バッファが大きくなるならこれ */
	buf := make([]byte, 10000000)
	sc.Buffer(buf, 10000000)

	sc.Scan()
	b := sc.Text()

	if b[0] == 'A' {
		_, _ = fmt.Fprintf(stdout, "T\n")
	} else if b[0] == 'T' {
		_, _ = fmt.Fprintf(stdout, "A\n")
	} else if b[0] == 'C' {
		_, _ = fmt.Fprintf(stdout, "G\n")
	} else {
		_, _ = fmt.Fprintf(stdout, "C\n")
	}
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}