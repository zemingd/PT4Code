package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func getInt() (n int) {
	sc.Scan()
	n, _ = strconv.Atoi(sc.Text())
	return n
}

func main() {
	sum := 0
	n := getInt()
	pArray := make([]int, n)
	for i := 0; i < n; i++ {
		pArray[i] = getInt()
	}

	for i := 0; i < n-2; i++ {
		if (pArray[i] < pArray[i+1] && pArray[i+1] < pArray[i+2]) ||
			(pArray[i] > pArray[i+1] && pArray[i+1] > pArray[i+2]) {
			sum++
		}
	}

	fmt.Println(sum)
}
