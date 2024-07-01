package main

import "fmt"

func main() {
	// fmt.Printf("Hello world\n")
	var N int
	fmt.Scan(&N)
	Bz := make([]int, N-1)
	for i := 0; i < N-1; i++ {
		fmt.Scan(&Bz[i])
	}

	// var sum int
	sum := Bz[0]

	// fmt.Printf(sum

	// sum = Bz[0]
	// fmt.Println("sum ", sum)
	// fmt.Println(sum)
	// fmt.Println("sum2 ", sum)
	for i := 0; i < N-2; i++ {
		// fmt.Println(Bz[i])
		if Bz[i] > Bz[i+1] {
			Bz[i] = Bz[i+1]
		}
		sum += Bz[i]
	}
	sum += Bz[N-2]

	fmt.Println(sum)
}
