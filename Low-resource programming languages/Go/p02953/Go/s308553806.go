package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	N := nextInt(sc)
	H := make([]int, N)
	for i := range H {
		H[i] = nextInt(sc)
	}
	maxH := H[len(H)-1]
	for i := len(H) - 2; i >= 0; i-- {
		if H[i] <= maxH {
			maxH = H[i]
		} else if H[i]-1 == maxH {
			H[i]--
			maxH = H[i]
		} else {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}
