package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var an, n int
	fmt.Scanf("%d", &n)

	a := BufScan()
	for i := 1; i < len(a); i++ {
		if a[i] < a[i-1] {
			an += a[i-1] - a[i]
			a[i] = a[i-1]
		}
	}
	fmt.Println(an)
}
func BufScan() []int {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	inStrings := strings.Split(sc.Text(), " ")
	var inInts []int
	for _, i := range inStrings {
		tmp, _ := strconv.Atoi(i)
		inInts = append(inInts, tmp)
	}
	return inInts
}
