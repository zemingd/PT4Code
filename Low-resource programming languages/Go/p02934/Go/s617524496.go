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
	n, _ := strconv.Atoi(nextLine())
	cols := strings.Split(nextLine(), " ")

	var sum float64

	for i := 0; i < n; i++ {
		fl, _ := strconv.ParseFloat(cols[i], 64)
		sum += 1 / fl
	}
	fmt.Println(1 / sum)

}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}
