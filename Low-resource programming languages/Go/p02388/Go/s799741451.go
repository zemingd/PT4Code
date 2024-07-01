package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		line := scanner.Text()
		base, err := strconv.Atoi(line)
		if err != nil {
			return
		}
		fmt.Println(base * base * base)
	}

	if err := scanner.Err(); err != nil {
		// log.Println(err)
		return
	}
}

