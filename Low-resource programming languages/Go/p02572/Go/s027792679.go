package main
 
import (
	"fmt"
)
 
func main() {
	var n int
	fmt.Scanf("%d", &n)

	A := make([]int32, n)
    // 数列の長さの分だけScanfを繰り返す
    for i := 0; i < n; i++ {
        fmt.Scanf("%d", &A[i])
	}

	var sum int32
	for i := 0; i < n-1 ; i ++{
		for j := i+1; j < n; j ++{
			sum += A[i] * A[j] % 1000000007
		} 
	}

	fmt.Printf("%d\n", sum % 1000000007)
}