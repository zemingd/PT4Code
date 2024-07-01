package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}
func parseInt(s string) (n int) {
	n, _ = strconv.Atoi(s)
	return
}

func main() {
	sc.Split(bufio.ScanWords)
	n, k := getInt(), getInt()
	//a := make([]int, n)
	for i := 0; i < n; i++ {
		getInt()
	}
	fmt.Println(math.Ceil(float64(1 + (float64(n-k) / 2))))
}
