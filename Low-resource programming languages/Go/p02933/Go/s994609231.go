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
	var ans float32
	for i := 0; i < n; i++ {
		var ni float32
		fmt.Scan(&ni)
		ans += 1.0 / ni
	}
	fmt.Println(1.0 / ans)
}
