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
	var tmp int64 = 0
	for j := 0; j < n; j ++{
		tmp += A[j]
	} 

	for i := 0; i < n-1 ; i ++{
		tmp -= A[i]
		sum += (A[i] * (tmp % 1000000007))% 1000000007
	}

	fmt.Printf("%d\n", sum % 1000000007)
}