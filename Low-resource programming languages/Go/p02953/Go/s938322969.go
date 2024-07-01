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
	n, _ := strconv.Atoi(sc.Text())

	h := make([]int, n)
	for i := range h {
		sc.Scan()
		h[i], _ = strconv.Atoi(sc.Text())
	}

	max := 0
	for i := range h {
		if max-h[i] >= 2 {
			fmt.Println("No")
			return
		}
		if max < h[i] {
			max = h[i]
		}
	}

	fmt.Println("Yes")
}
