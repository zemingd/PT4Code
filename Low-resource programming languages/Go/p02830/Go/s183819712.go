package main
import "fmt"

func main() {
	var n int
	var s, t string
	fmt.Scan(&n)
	fmt.Scan(&s, &t)

	final := ""
	for i := 0; i < n; i++ {
		final = final + s[i:i+1]
		final = final + t[i:i+1]
	}
	fmt.Println(final)
}