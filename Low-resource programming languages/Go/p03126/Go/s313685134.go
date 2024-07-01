package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

func getFloat() float64 {
	sc.Scan()
	n, _ := strconv.ParseFloat(sc.Text(), 64)
	return n
}

func main() {
	sc.Split(bufio.ScanWords)
	n, _ := getInt(), getInt()

	a := make(map[int]int, n)

	for i := 0; i < n; i++ {
		k := getInt()
		for j := 0; j < k; j++ {
			t := getInt()
			a[t]++
		}
	}

	ans := 0
	for _, v := range a {
		if v == n {
			ans++
		}
	}
	fmt.Println(ans)

}
