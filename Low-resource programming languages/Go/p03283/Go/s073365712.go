package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)
	n, m, q := ri(), ri(), ri()
	ar := make([][]int, n+1)
	for i := range ar {
		ar[i] = make([]int, n+1)
	}
	for i := 0; i < m; i++ {
		l, r := ri(), ri()
		for j := 0; j <= l; j++ {
			ar[j][r]++
		}
	}
	for i := 0; i < q; i++ {
		l, r := ri(), ri()
		sum := 0
		for j := l; j <= r; j++ {
			sum += ar[l][j]
		}
		fmt.Println(sum)
	}
}

var sc = bufio.NewScanner(os.Stdin)

func ri() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
