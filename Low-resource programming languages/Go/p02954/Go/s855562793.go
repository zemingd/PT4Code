package main

import (
	"bufio"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, 1e5+1)
	sc.Buffer(buf, 1e5+1)

	sc.Scan()
	S := []byte(sc.Text())

	changes := make([]int, 1)
	changes[0] = 0
	var now byte = 'R'
	for i, el := range S {
		if el != now {
			changes = append(changes, i)
			if now == 'R' {
				now = 'L'
			} else {
				now = 'R'
			}
		}
	}
	changes = append(changes, len(S))

	result := make([]int, len(S))
	for i := 0; i < len(changes)-1; i++ {
		even := i%2 == 0
		num := changes[i+1] - changes[i]
		if even {
			result[changes[i+1]-1] += num%2 + num/2
			result[changes[i+1]] += num / 2
		} else {
			result[changes[i]-1] += num / 2
			result[changes[i]] += num%2 + num/2
		}
	}

	writer := bufio.NewWriter(os.Stdout)
	for i, res := range result {
		if i != 0 {
			writer.WriteString(" ")
		}
		writer.WriteString(strconv.Itoa(res))
	}
	writer.Flush()
}
