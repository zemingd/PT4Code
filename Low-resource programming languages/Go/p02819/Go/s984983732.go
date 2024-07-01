package main
import "fmt"

func main() {
	var x int
	fmt.Scan(&x)

	prime := false

	for i := 2; i <= x; i++ {
		if x%i == 0 {
			if x == i {
				prime = true
			}
			break
		}
	} // from this loop we get the given num is prime or not

	if prime == true {
		fmt.Println(x)
	} else {
		for i := x + 1; ; i++ {
			for j := 2; j <= i; j++ {
				if i%j == 0 {
					if j == i {
						fmt.Println(i)
						prime = true
					}
					break
				}
			}
			if prime == true {
				break
			}
		}
	}
}