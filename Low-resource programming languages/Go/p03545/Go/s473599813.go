package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func rs() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	input := rs()
	abcd := make([]int, 4)
	for i := 0; i < 4; i++ {
		abcd[i] = int(input[i] - '0')
	}

	for x := 0; x < 8; x++ {
		var sum = abcd[0]
		var s = string('0' + abcd[0])
		for i := 0; i < 3; i++ {
			switch (x >> uint(i)) & 1 {
			case 1:
				sum += abcd[i+1]
				s = s + "+" + string(abcd[i+1]+'0')
			case 0:
				sum -= abcd[i+1]
				s = s + "-" + string(abcd[i+1]+'0')
			}
		}

		if sum == 7 {
			s += "=7"
			fmt.Println(s)
			return
		}
	}
}
