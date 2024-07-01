package main
import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	ar := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&ar[i])
	}

	no := 0
	j := 1
	for i := 0; i < n; i++ {
		if ar[i] == j {
			j++
		} else {
			no++
		}
	}
	if no < n {
		fmt.Println(no)
	} else {
		fmt.Println(-1)
	}
}