package main
import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)
func newScanner() *bufio.Scanner{
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	return scanner
}

var sc = newScanner()

func scanInt() int{
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}

func scanInts(n int) []int{
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}
	return a
}

func scanString() string{
	if sc.Scan() {
		return sc.Text()
	}
	panic(sc.Err())
}

func main() {
	n := scanInt()
	h := scanInt()
	answer := countAttacks(n, h)
	fmt.Println(answer)
}

func countAttacks(n, h int) int {
	if n % h == 0 {
		return n / h
	}
	return n / h + 1
}