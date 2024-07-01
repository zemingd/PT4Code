package main
 
import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)
 
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
 
func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}
 
func main() {
	var n, k int
	fmt.Scan(&n, &k)
	v := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range v {
		sc.Scan()
		v[i], _ = strconv.Atoi(sc.Text())
	}
 
	ans := 0
	for i := 0; i <= min(k, n); i++ {
		for j := 0; j <= min(k, n); j++ {
			if i+j > min(k, n) {
				continue
			}
			rem := k - i - j
			a := make([]int, 0, i+j)
			for i2 := 0; i2 < i; i2++ {
				a = append(a, v[i2])
			}
			for j2 := 0; j2 < j; j2++ {
				a = append(a, v[n-1-j2])
			}
			sort.Ints(a)
			s := 0
			for _, e := range a {
				if e >= 0 {
					s += e
				} else {
					if rem > 0 {
						rem--
					} else {
						s += e
					}
				}
			}
			ans = max(ans, s)
		}
	}
	fmt.Println(ans)
}