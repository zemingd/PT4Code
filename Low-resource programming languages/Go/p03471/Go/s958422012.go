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
	fmt.Println(N, Y)
	for i := N; i >= 0; i-- {
		for j := N - i; j >= 0; j-- {
			total := (N-i-j)*10000 + j*5000 + i*1000

			if total >= Y {
				if total == Y {
					fmt.Fprintln(writer, (N - i - j), j, i)
				} else {
					fmt.Fprintln(writer, -1, -1, -1)
				}

				return
			}
		}
	}

}
