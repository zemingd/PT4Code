package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	A, B, C, K := getStdinInt()

	if A >= K {
		fmt.Printf("%d\n", K)
		return
	}
	K = K - A

	if B >= K {
		fmt.Printf("%d\n", A)
		return
	}
	K = K - B

	if C >= K {
		fmt.Printf("%d\n", A-K)
		return
	}
	fmt.Printf("%d\n", A-C)
}

var sc = bufio.NewScanner(os.Stdin)

func getStdin() string {
	sc.Scan()
	return sc.Text()
}
func getStdinInt() (int, int, int, int) {
	str := getStdin()
	list := strings.Split(str, " ")
	A, _ := strconv.Atoi(list[0])
	B, _ := strconv.Atoi(list[1])
	C, _ := strconv.Atoi(list[2])
	D, _ := strconv.Atoi(list[3])
	return A, B, C, D
}
