package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func gcd(a int, b int) int {
	if b == 0 {
		return a

	}
	return gcd(b, a%b)
}

func lcm(a int, b int) int {
	return a * b / gcd(a, b)
}

func main() {

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	array := make([]int, 2)
	for i := 0; i < 2; i++ {
		sc.Scan()
		array[i], _ = strconv.Atoi(sc.Text())
	}
	answer := lcm(array[0], array[1])

	fmt.Println(answer)
}
