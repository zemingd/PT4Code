package main

import (
	"bufio"
	"fmt"
	"os"
)

func main(){
	reader := bufio.NewReader(os.Stdin)
	writer := bufio.NewWriter(os.Stdout)
	defer writer.Flush()

	var (
		S,ans string
		ok, C bool
		length int = 0
	)
	ok = true
	C = false

	fmt.Fscan(reader, &S)
	length = len(S)

	for i, c := range S {
		if i == 0 { 
			ok = ok && (c == 'A')
		} else {
			if 1 < i && i < length-1 && c == 'C' {
				ok = ok && !C
				C = true
			} else {
				ok = ok && (97 <= c && c <= 122)
			}
		}
	}


	if ok && C {
		ans = "AC"
	} else {
		ans = "WA"
	}

	fmt.Fprintln(writer, ans)
}