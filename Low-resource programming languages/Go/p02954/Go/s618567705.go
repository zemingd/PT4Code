package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	// sc.Split(bufio.ScanWords)

	// S := strings.Split(nextLine(), "")
	var S string
	fmt.Scan(&S)

	field := make([]int, len(S))
	right := 0
	left := 0

	for i := 0; i < len(S)-1; i++ {
		if S[i] == 'R' && S[i+1] == 'R' {
			field[i] = 0
			right++
		}

		if S[i] == 'R' && S[i+1] == 'L' {
			field[i] = right/2 + 1
			field[i+1] = right/2 + right%2 + 1
			right = 0
		}
	}

	for i := len(S) - 1; i > 0; i-- {
		if S[i-1] == 'L' && S[i] == 'L' {
			field[i] += 0
			left++
		}

		if S[i-1] == 'R' && S[i] == 'L' {
			field[i-1] += left/2 + left%2
			field[i] += left / 2
			left = 0
		}
	}

	for _, f := range field {
		fmt.Printf("%d ", f)
	}

	fmt.Println()

	// for i := 0; i < len(S); i++ {
	// 	field[i] = 1
	// }

	// for l := 0; l < len(S)-1; l++ {

	// 	if S[l] == "R" && S[l+1] == "R" {
	// 		field[l]--
	// 		field[l+1]++
	// 	}

	// 	if S[l] == "R" && S[l+1] == "L" {
	// 		field[l]++
	// 		field[l+1]--
	// 	}

	// }

	// for r := len(S) - 1; r >= 1; r-- {

	// 	if S[r] == "L" && S[r-1] == "L" {
	// 		field[r]--
	// 		field[r-1]++
	// 	}

	// 	if S[r-1] == "R" && S[r] == "L" {
	// 		field[r-1]--
	// 		field[r]++
	// 	}
	// }

	// fmt.Println(field)

	// for i := 0; i < len(S)-1; i++ {
	// 	if S[i] == "R" && S[i+1] == "L" {
	// 		tmp := field[i]
	// 		field[i] = field[i+1]
	// 		field[i+1] = tmp
	// 	}
	// }

	// fmt.Println(field)
}
