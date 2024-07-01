package main
 
import (
	"fmt"
)
 
func main() {
	var n int
	fmt.Scanf("%d", &n)

	A := make([]int, n)
    // 数列の長さの分だけScanfを繰り返す
    for i := 0; i < n; i++ {
        fmt.Scanf("%d", &A[i])
	}
		
	var height int = A[0]
	var humidai int
	var min_humidai int 

	for i := 1; i < n; i++ {

		if height > A[i]{
			humidai = height - A[i]
			min_humidai = min_humidai + humidai
			height = height
		} else {
			height = A[i]
		}
	}

	fmt.Printf("%d\n", min_humidai)
}