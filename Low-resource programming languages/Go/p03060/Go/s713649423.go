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

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	v := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		v[i], _ = strconv.Atoi(sc.Text())
	}

	c := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		c[i], _ = strconv.Atoi(sc.Text())
	}

	ans := 0
	for i := 0; i< n;i++ {
		if v[i] - c[i] > 0 {
			ans += v[i] - c[i]
		}
	}
	fmt.Println(ans)

}

