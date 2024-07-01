package main

import "fmt"

func main() {
	var line string
	_, _ = fmt.Scan(&line)
	count := 0
	stack := []string{string(line[0])}
	line = line[1:]
	for _, s := range line {
		str := string(s)
		if len(stack) > 0 {
			ss := string(stack[len(stack) - 1])
			if ss != str {
				stack = stack[:len(stack) - 1]
				count++
			} else {
				stack = append(stack, str)
			}
		} else {
			stack = append(stack, str)
		}
	}
	fmt.Println(count * 2)
}
