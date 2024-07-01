package main

func main() {
	var n int
	fmt.Scan(&n)
	for i := 1; i <= 9; i++ {
		for j := 1; j <= 9; j++ {
			if n == i*j {
				fmt.Println("Yes")
				os.Exit(0)
			}
		}
	}
	fmt.Println("No")
}
