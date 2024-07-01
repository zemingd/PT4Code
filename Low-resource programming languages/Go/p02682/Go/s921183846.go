package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func sliceAtoi(arr []string) (int, int, int) {
	si := make([]int, 0, len(arr))
	for _, a := range arr {
		i, _ := strconv.Atoi(a)
		si = append(si, i)
	}
	return si[0], si[1], si[3]
}

func main() {
	a, b, k := sliceAtoi(strings.Split(nextLine(), " "))
	if a > k {
		fmt.Println(k)
	} else if a+b >= k && a <= k {
		fmt.Println(a)
	} else {
		fmt.Println(a - (k - (a + b)))
	}
}
