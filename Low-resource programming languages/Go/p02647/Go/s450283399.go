package main

import (
	"os"
	"strconv"
	"strings"
)
import "bufio"

func main() {
	reader := bufio.NewReader(os.Stdin)
	lineBuf, _, err := reader.ReadLine()
	if err != nil {
		panic(err)
	}
	line := string(lineBuf)
	params := strings.Split(line, " ")
	n, _ := strconv.Atoi(strings.TrimSpace(params[0]))
	k, _ := strconv.Atoi(strings.TrimSpace(params[1]))
	lineBuf2, _, err := reader.ReadLine()
	if err != nil {
		panic(err)
	}
	values := strings.Split(string(lineBuf2), " ")
	a := make([]int, 0)
	for i := 0; i < len(values); i+= 1 {
		tmp, _ := strconv.Atoi(strings.TrimSpace(values[i]))
		a = append(a, tmp)
	}

	for i := 0; i < k; i += 1 {
		a = f(a, n)
	}

	result := make([]string, 0)
	for i := 0; i < len(a); i += 1 {
		tmp := strconv.Itoa(a[i])
		result = append(result, tmp)
	}
	println(strings.Join(result, " "))
}

func f(a []int, n int)[]int {
	result := make([]int, 0)
	for x := 0; x < n; x += 1 {
		b := 0
		for j := 0; j < n; j += 1 {
			d := float64(a[j])
			if (float64(j) - d - 0.5) <= float64(x) && float64(x) <= (float64(j) + d + 0.5) {
				b += 1
			}
		}
		result = append(result, b)
	}
	return result
}
