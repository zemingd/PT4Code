package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()

	var s string
	fmt.Fscan(r, &s)

	var result string
	for _, a := range s {
		switch a {
		case '0':
			result += "0"
		case '1':
			result += "1"
		case 'B':
			if len(result) != 0 {
				result = result[:len(result)-1]
			}
		}
	}

	fmt.Fprintln(w, result)
}
