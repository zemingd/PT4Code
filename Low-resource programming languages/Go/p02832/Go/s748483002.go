package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var N int
	fmt.Scan(&N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	as := make([]int, N)
	for i := range as {
		sc.Scan()
		as[i], _ = strconv.Atoi(sc.Text())
		as[i]--
	}

	target := 0
	count := 0
	for _, a := range as {
		if target != a {
			count++
			continue
		}
		target++
	}
	if target == 0 {
		fmt.Println(-1)
		return
	}
	fmt.Println(count)
}
