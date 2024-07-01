package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	a := make([]int, n, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		tmp, _ := strconv.Atoi(sc.Text())
		a[i] = tmp
	}

	sort.Ints(a)

	answer := "YES"
	for i := 1; i < n; i++ {
		if a[i-1] == a[i] {
			answer = "NO"
		}
	}

	fmt.Println(answer)
}
