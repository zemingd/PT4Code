package main

import (
	"fmt"
	"os"
	"bufio"

)

func Abs(x int) int {
	if x < 0 {
		return -1 * x
	}
	return x
}

func main(){
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()
	var k, n int
	fmt.Fscanf(in, "%d %d\n", &k, &n)

	a := make([]int, n)

	for i := 0 ; i < n ; i ++ {
		fmt.Fscanf(in, "%d", &a[i])
	}
	fmt.Fscanf(in, "\n")

	a = append(a, k + a[0])

	maxi := 0
	for i := 0 ; i < n ; i ++ {
		if Abs(a[i + 1] - a[i]) > maxi {
			maxi = Abs(a[i + 1] - a[i])
		}
	}
	fmt.Println(k - maxi)
}
