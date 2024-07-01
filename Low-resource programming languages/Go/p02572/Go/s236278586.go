package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {

	var sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	a := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
		a[i] = a[i] % (1000000007)
	}

	var sum uint64
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			sum += uint64(a[i] * a[j])
			sum = sum % (1000000007)
		}
	}
	fmt.Println(sum)
}
