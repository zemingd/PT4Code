package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var stdInScanner = bufio.NewScanner(os.Stdin)

func nextInt() int {
	stdInScanner.Scan()
	i, _ := strconv.Atoi(stdInScanner.Text())
	return i
}

func main() {
	stdInScanner.Split(bufio.ScanWords)

	A := nextInt()
	V := nextInt()
	B := nextInt()
	W := nextInt()
	T := nextInt()

	var firstDistance int
	if A > 0 && B > 0 {
		firstDistance = B - A
	} else if A < 0 && B < 0 {
		firstDistance = int(math.Abs(float64(B) - float64(A)))
	} else if A > 0 && B < 0 {
		firstDistance = A + int(math.Abs(float64(B)))
	} else if A < 0 && B > 0 {
		firstDistance = int(math.Abs(float64(A))) + B
	} else { // A or B == 0
		firstDistance = int(math.Abs(float64(A))) + int(math.Abs(float64(B)))
	}

	if V*T >= W*T+firstDistance {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
