package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)

	sp := strings.Fields(next())
	sum := 0
	for i := 0; i < b; i++ {
		t, _ := strconv.Atoi(sp[i])
		sum = sum + t
	}

	if a < sum {
		fmt.Println(-1)
	} else {
		fmt.Println(a - sum)
	}
}

func next() string {
	sc.Scan()
	return sc.Text()
}
