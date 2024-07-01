package main
 
import (
	"fmt"
)
 
func main() {
 
	var n uint64 = 0
	var k uint64 = 0
	fmt.Scan(&n)
	fmt.Scan(&k)
 
	exec(n, k)
 
}
 
func exec(n uint64, k uint64) {
	if n == 0 {
		fmt.Println(0)
		return
	}
	cnt := 1
	for cur := uint64(k); cur <= n; cur *= k {
		cnt++
	}
	fmt.Println(cnt)
}