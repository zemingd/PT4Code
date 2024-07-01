package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)
	m := make(map[int]int)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < n; i++ {
		sc.Scan()
		x, _ := strconv.Atoi(sc.Text())
		m[x]++
	}
	ans := 0
	for _, v := range m {
		if v%2 == 1 {
			ans++
		}
	}
	fmt.Println(ans)
}
