package main

import (
	"bufio"
	"fmt"
	"os"
)
var n int


func main()  {
	var reader = bufio.NewReader(os.Stdin)
	var writer = bufio.NewWriter(os.Stdout)
	defer writer.Flush()
	fmt.Fscanf(reader, "%d", &n)
	var ret = int64(0)

	for i := 1; i <= n; i++ {
		if i % 3 == 0 || i % 5 == 0 {
			continue
		}
		ret += int64(i)
	}
	fmt.Fprintf(writer, "%d", ret)
}
