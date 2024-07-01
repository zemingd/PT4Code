package main

import (
	"bufio"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	oddEven := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		oddEven[i], _ = strconv.Atoi(sc.Text())
	}

	boals := make([]int, n)
	for i := n - 1; i >= 0; i-- {
		count := 0
		for j := 2; j*(i+1) <= n; j++ {
			count += boals[j*(i+1)-1]
		}

		if oddEven[i] != count%2 {
			boals[i] = 1
		}
	}

	count := 0
	displayNumbers := make([]int, 0)
	for i, exist := range boals {
		if exist == 0 {
			continue
		}
		count += exist
		displayNumbers = append(displayNumbers, i+1)
	}

	writer := bufio.NewWriter(os.Stdout)

	writer.WriteString(strconv.Itoa(count) + "\n")

	for i, el := range displayNumbers {
		if i != 0 {
			writer.WriteString(" " + strconv.Itoa(el))
		} else {
			writer.WriteString(strconv.Itoa(el))
		}
	}

	if count != 0 {
		writer.WriteString("\n")
	}

	writer.Flush()
}
