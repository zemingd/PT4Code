package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func gets() string {
	sc.Scan()
	return sc.Text()
}

func atoi(s string) int {
	i, err := strconv.Atoi(s)
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	var n int
	fmt.Scan(&n)
	var a []int

	b := strings.Split(gets(), " ")

	// fmt.Println(A)
	// fmt.Println(B)

	a = append(a, atoi(b[0]))

	for i := 1; i < len(b); i++ {
		work := atoi(b[i])
		work2 := atoi(b[i-1])
		if work > work2 {
			a = append(a, work2)
		} else {
			a = append(a, work)
		}
	}
	a = append(a, atoi(b[len(b)-1]))

	sum := 0

	for _, value := range a {
		sum += value
	}

	// fmt.Println(a)
	fmt.Println(sum)
}
