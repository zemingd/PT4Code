package main

import(
	"bufio"
	"strconv"
	"fmt"
	"os"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func main() {
	sc.Split(bufio.ScanWords)

	a := nextLine()

	b := strings.Split(a, "")
	length := len(a)
	
	s := []int{}
	for i := 0; i < length; i++ {
		v, e := strconv.Atoi(b[i])
		if e != nil {
			panic(e)
		}

		s = append(s, v)
	}

	var ans string

	for bit := 0; bit < 8; bit++ {
		sum := s[0]
		ops := b[0]

		for i := 0; i < 3; i++ {
			op := (bit & (1<<uint8(i)))

			// When the operator is '+'
			if op > 0 {
				sum += s[i+1]
				ops += "+" + b[i+1]
			// When the operator is '-'
			} else {
				sum -= s[i+1]
				ops += "-" + b[i+1]
			}
	
		}
		if sum == 7 {
			ans = ops + "=7"
			break
		}
	}
	fmt.Println(ans)
}
