package main

import(
	"fmt"
	"os"
	"bufio"
)

func main(){
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)


	defer out.Flush()

	var s string

	fmt.Fscanf(in, "%s\n", &s)

	n := len(s)
	ok := true

	for i := 0 ; i < n / 2 ; i ++ {
		if s[i] != s[n - i - 1] {
			ok = false
			break
		}
	}

	for i := 0 ; i < (n - 1) / 2 ; i ++ {
		if s[i] != s[(n - 1)/2 - i -1] {
			ok = false
			break
		}
	}

	for i := ( n + 3 ) / 2 ; i < (3 * n + 3) / 4 ; i ++ {
		if s[i] != s[n - i - 1] {
			ok = false
			break
		}
	}

	if ok == true {
		fmt.Fprintf(out, "YES\n")
	} else {
		fmt.Fprintf(out, "NO\n")
	}

}

