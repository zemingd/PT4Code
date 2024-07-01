package main
 
import (
	"fmt"
)
 
func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n)
	for i:=0; i<n; i++ {
		fmt.Scan(&h[i])
	}
	ans := "Yes"
	for i:=n-2; i>0; i-- {
		if h[i]-h[i+1]==1 {
			h[i]--
		} else if h[i]-h[i+1]>1 {
			fmt.Println("No")
			return
		}
	}
	fmt.Println(ans)
}