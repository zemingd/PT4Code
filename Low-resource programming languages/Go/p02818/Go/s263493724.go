package main
import "fmt"

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)

	if k >= a {
		k -= a
		a = 0
		if k >= b {
			b = 0
		} else if k < b {
			b -= k
		}
	} else if k < a {
		a -= k
	}

	fmt.Println(a, b)
}