package main
import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func newScanner() *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	return scanner
}

func scanInt() int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}

func scanInts(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}
	return a
}

func scanString() string {
	if sc.Scan() {
		return sc.Text()
	}
	panic(sc.Err())
}

var sc = newScanner()

func main() {
	n := scanInt()
	a := scanInts(n)
	b := make([]int, n)
	m := make(map[int]int)
	for i := 0; i < n; i++ {
		b[i] = -a[i] + i + 1
		t := a[i] + i + 1
		m[t]++
	}

	var ans int
	for i := 0; i < n; i++ {
		ans += m[b[i]]
	}
	fmt.Println(ans)
}