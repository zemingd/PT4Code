package main
 
import (
	"fmt"
)
 
func main() {
	var n,l int
	var sum int
	fmt.Scanf("%d %d", &n,&l)
	
	k := 1-l
	
	// 単純sum
	sum = l*n - n + n*(n+1)/2
	
	if (k >= l && k <= n) {
	} else {
	    if l > 0 {
	        sum -= l
	    } else {
	        sum -= (l+n-1)
	    }
	}

    fmt.Printf("%d",sum)
}