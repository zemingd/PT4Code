package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var an, n int
	fmt.Scanf("%d", &n)

	a := BufScan(n)
	for i := 1; i < n; i++ {
		if a[i] < a[i-1] {
			an += a[i-1] - a[i]
			a[i] = a[i-1]
		}
	}
	fmt.Println(an)
}
func BufScan(n int) []int {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	var inInts []int
	for i := 0; i < n; i++ {
		sc.Scan()
		tmp, _ := strconv.Atoi(sc.Text())
		inInts = append(inInts, tmp)
	}
	return inInts
}
