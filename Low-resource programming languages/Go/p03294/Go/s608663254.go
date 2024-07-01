package main
import "fmt"


func gcd(a, b int64) int64 {
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

	var max int = 0
	for _, v := range a{
		if max < v{
			max = v
		}
	}

	var g int64 = 1
	for _, v := range a{
		g = g / gcd(g, int64(v)) * int64(v)
	}
	for _, v := range a{
		ans += (g-1) % int64(v)
	}


	fmt.Println(ans)
}