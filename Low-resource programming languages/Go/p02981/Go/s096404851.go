package main

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)

	if a*n > b {
		fmt.Println(a * n)
	}
	fmt.Println(b)
}
