package main

import (
	"fmt"
	"io"
	"os"
)

var (
	reader io.Reader = os.Stdin
	writer io.Writer = os.Stdout
)

func main() {
	run()
}

func run() {
	var N, Y int
	fmt.Fscan(reader, &N, &Y)

	for i := N; i >= 0; i-- {
		for j := N - i; j >= 0; j-- {
			total := 10000*i + 5000*j + 1000*(N-i-j)

			// if total <= Y {
			if total == Y {
				fmt.Fprintln(writer, i, j, (N - i - j))
				// } else {
				// 	fmt.Fprintln(writer, -1, -1, -1)
				return
			}

			// }
		}
	}

	fmt.Fprintln(writer, -1, -1, -1)

}
