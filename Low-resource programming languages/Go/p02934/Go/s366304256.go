package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	var ans float64
	for i := 0; i < n; i++ {
		sc.Scan()
		ni, _ := strconv.Atoi(sc.Text())
		ans += 1 / float64(ni)
	}
	fmt.Println(1 / ans)
}
