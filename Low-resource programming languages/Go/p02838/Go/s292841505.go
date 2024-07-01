package main
 
import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)
 
const m = 1000000007
 
func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
 
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
 
	c := make([]int64, 60, 60)
	for i := 0; i < 60; i++ {
		c[i] = 0
	}
 
	for i := 0; i < n; i++ {
		sc.Scan()
		a, _ := strconv.Atoi(sc.Text())
 
		for j := 0; j < 60; j++ {
			c[j] += int64((a >> (uint32(j) + 1) << 1) ^ (a >> uint32(j)))
		}
	}
 
	var answer int64 = 0
	for i := 0; i < 60; i++ {
		answer += (((int64(n) - c[i]) * c[i] % m) * (1 << uint32(i)) % m) % m
		answer %= m
	}
	fmt.Println(answer)
}