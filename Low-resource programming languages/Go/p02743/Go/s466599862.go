package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)
	sc.Split(bufio.ScanWords)
	a, _ := strconv.Atoi(Scanner())
	b, _ := strconv.Atoi(Scanner())
	c, _ := strconv.Atoi(Scanner())
	if math.Sqrt(float64(a))+math.Sqrt(float64(b)) < math.Sqrt(float64(c)) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
