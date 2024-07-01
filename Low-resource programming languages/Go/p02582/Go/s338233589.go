package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()
	var a, b, c byte
	fmt.Fscanf(r, "%c%c%c", &a, &b, &c)

	count := 0

	arr := []byte{a, b, c}

	for i := 0; i < 3; i++ {
		if arr[i] == 'R' {
			if i == 0 {
				count++
			} else if i == 1 {
				if count == 0 {
					count++
				} else if arr[i-1] == 'R' {
					count++
				}
			} else if i == 2 {
				if count == 0 {
					count++
				} else if count == 1 && arr[i-1] == 'R' {
					count++
				} else if count == 2 {
					count++
				}
			}
		}
	}

	fmt.Fprintf(w, "%d\n", count)

}
