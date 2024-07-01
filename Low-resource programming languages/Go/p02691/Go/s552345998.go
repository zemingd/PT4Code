package main
import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"sort"
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
	a1 := make([]int, n)
	a2 := make([]int, n)
	m := make(map[int]int)
	for i := 0; i < n; i++ {
		a1[i] = -a[i] + i + 1
		a2[i] = a[i] + i + 1
		m[a2[i]]++
	}
	sort.Ints(a1)

	var ans int
	for i := 0; i < n; i++ {
		ans += m[a1[i]]
	}
	fmt.Println(ans)
}