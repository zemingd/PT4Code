package main
import "fmt"


func gcd(a, b int) int {
	for b != 0 {
		return gcd(b, a%b)
	}
	return a
}

func main() {
	var n int
	fmt.Scan(&n)
	var a []int
	var ans int64 = 0
	for i := 0; i < n; i++ {
		var v int
		fmt.Scan(&v)
		a = append(a, v)
	}

	var g int = 1
	for _, v := range a{
		g = gcd(g, v)
	}

	for _, v := range a{
		ans += int64(v / g -1)
	}

	fmt.Println(ans)
}