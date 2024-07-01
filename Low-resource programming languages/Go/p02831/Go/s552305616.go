package main
import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	i := 2
	lcm := 1
	for true {
		if a%i == 0 && b%i == 0 {
			a = a / i
			b = b / i
			lcm = lcm * i
		}
		if a%i != 0 || b%i != 0 {
			i++
			if i > a || i > b {
				lcm = lcm * a * b
				break
			}
		}
	}
	fmt.Println(lcm)
}