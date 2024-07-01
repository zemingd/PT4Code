package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	// var input = StrStdin(1)

	// N, _ := strconv.Atoi(input[0][0])

	var N uint32
	fmt.Scanf("%d", &N)

	var fizz uint32 = N / 3
	var bazz uint32 = N / 5
	var fizzbazz uint32 = N / 15

	var sum uint32 = (1 + N) * N / 2
	var sumF uint32 = 3 * (1 + fizz) * fizz / 2
	var sumB uint32 = 5 * (1 + bazz) * bazz / 2
	var sumFB uint32 = 15 * (1 + fizzbazz) * fizzbazz / 2

	// fmt.Printf("fizz:%d bazz:%d fizzbuzz:%d\n", fizz, bazz, fizzbazz)
	// fmt.Printf("sum:%d sumF:%d sumB:%d sumFB:%d\n", sum, sumF, sumB, sumFB)

	fmt.Println(sum - sumF - sumB + sumFB)
}

func StrStdin(num int) [][]string {
	var stringInput [][]string
	scanner := bufio.NewScanner(os.Stdin)

	for i := 0; i < num; i++ {
		scanner.Scan()
		if s := scanner.Text(); s != "" {
			stringInput = append(stringInput, strings.Split(strings.TrimSpace((scanner.Text())), " "))
		} else {
			break
		}
	}

	return stringInput
}
