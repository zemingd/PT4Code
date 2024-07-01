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
	list := getStdinIntArr()
	A := list[0]
	B := list[1]
	C := list[2]
	K := list[3]

	A_N := A - K
	if A_N < 0 {
		K = K - A
		A_N = A
	} else {
		K = 0
		A_N = A - A_N
	}

	B_N := B - K
	if B_N < 0 {
		K = K - B
		B_N = B
	} else {
		K = 0
		B_N = B - B_N
	}

	C_N := C - K
	if C_N < 0 {
		K = K - C
		C_N = C
	} else {
		K = 0
		C_N = C - C_N
	}

	fmt.Printf("%d\n", A_N+(-1)*C_N)
}

func getStdin() string {
	sc.Scan()
	return sc.Text()
}
func getStdinInt() int {
	str := getStdin()
	rtn, _ := strconv.Atoi(str)
	return rtn
}
func getStdinIntArr() []int {
	str := getStdin()
	list := strings.Split(str, " ")
	rtn := make([]int, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.Atoi(val)
	}
	return rtn
}
