package main

import (
    "bufio"
    "fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var N int
	fmt.Scan(&N)
	var total int64
	for i := 1; i < (N + 1); i++ {
		if (i % 15) == 0 {
		} else if (i % 5) == 0 {
		} else if (i % 3) == 0 {
		} else {
			total += int64(i)
		}
	}
	fmt.Println(total)
}