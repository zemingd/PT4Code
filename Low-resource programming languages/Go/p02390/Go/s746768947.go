
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
		tsec, _ := strconv.Atoi(line)
		sec, remain := tsec%60, tsec/60
		min, remain2 := remain%60, remain/60
		hour := remain2 % 24
		fmt.Printf("%v:%v:%v\n", hour, min, sec)
	}

	if err := scanner.Err(); err != nil {
		// log.Println(err)
		return
	}
}

