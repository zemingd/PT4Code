package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

var (
	read  = bufio.NewReader(os.Stdin)
	write = bufio.NewWriter(os.Stdout)
)

func yesno(result bool) {
	if result {
		fmt.Fprintln(write, "Yes")
	} else {
		fmt.Fprintln(write, "No")
	}
}

func isPrime(x int) bool {
	for i := 2; i <= int(math.Sqrt(float64(x))); i++ {
		if x%i == 0 {
			return false
		}
	}
	return true
}

func main() {
	defer write.Flush()

	var x int
	fmt.Fscan(read, &x)

	for {
		if isPrime(x) {
			fmt.Fprintln(write, x)
			return
		}
		x++
	}
}
