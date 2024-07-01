package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())

	count := 0.
	for i := 0; i < N; i++ {
		sc.Scan()
		a, _ := strconv.ParseFloat(sc.Text(), 64)
		count += 1 / a
	}

	fmt.Print(1 / count)
}
