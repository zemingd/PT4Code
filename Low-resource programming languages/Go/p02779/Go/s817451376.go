package main
 
import (
	"fmt"
	"os"
)
 
func main() {
	var N int
 
	fmt.Scan(&N)
	hashMap := make(map[int]int, N)
	A := make([]int, N, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&A[i])
		hashMap[A[i]]++
	}
 
	for _, count := range hashMap {
		if count > 1 {
			fmt.Println("NO")
			os.Exit(0)
		}
	}
	fmt.Println("YES")
}