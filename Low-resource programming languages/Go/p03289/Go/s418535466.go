package main

import "fmt"

func main() {
	var str string
	fmt.Scanf("%s", &str)
	aa := false
	in := []byte(str)
	if in[0] != 'A' {
		goto wa
	}
	if 'A' <= in[1] && in[1] <= 'Z' {
		goto wa
	}
	for i := 2; i <= len(in)-2; i++ {
		if in[i] == 'C' {
			if !aa {
				aa = true
				continue
			} else {
				goto wa
			}
		}
		if 'A' <= in[i] && in[i] <= 'Z' {
			goto wa
		}

	}
	if !aa {
		goto wa
	}
	if 'A' <= in[len(in)-1] && in[len(in)-1] <= 'Z' {
		goto wa
	}
	fmt.Println("AC")
	return
wa:
	fmt.Println("WA")
}
