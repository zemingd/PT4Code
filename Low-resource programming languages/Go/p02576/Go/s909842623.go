// Takoyaki

package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func takoyaki(n, x, t int) int {
	return int(math.Ceil(float64(n)/float64(x))) * t
}

func nextInt(sc *bufio.Scanner) (int, error) {
	sc.Scan()
	t := sc.Text()
	return strconv.Atoi(t)
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	n, _ := nextInt(sc)
	x, _ := nextInt(sc)
	t, _ := nextInt(sc)

	r := takoyaki(n, x, t)
	fmt.Println(r)
}