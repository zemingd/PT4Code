package main
 
import (
	"fmt"
)
 
func main() {
	var n int
	fmt.Scanf("%d", &n)

	A := make([]int64, n)
    // 数列の長さの分だけScanfを繰り返す
    for i := 0; i < n; i++ {
        fmt.Scanf("%d", &A[i])
	}

	var sum int64
	for i := 0; i < n-1 ; i ++{
		for j := i+1; j < n; j ++{
			sum += A[i] * A[j]
		} 
	}

	fmt.Printf("%d\n", sum % 1000000007)
}