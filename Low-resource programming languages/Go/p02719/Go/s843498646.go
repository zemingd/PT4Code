ソースコード 

Copy
Copy
package main
 
import (
	"fmt"
)
 
var N, K int64
func main() {
	fmt.Scan(&N, &K)
	a := N % K
	b := K - a
	if a > b {
      fmt.Println(b)
	} else {
      fmt.Println(a)
	}
}