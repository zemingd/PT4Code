package main
import "fmt"

func main() {
	var s []byte
	fmt.Scanf("%s", &s)

	var before byte = s[0]
	var c int = 0
	for _, b := range s {
		if before != b {
			before = b
			continue
		}
		c += 1
		if b == '0' {
			before = '1'
		} else {
			before = '0'
		}
	}
	if len(s)/2 < c {
		c = len(s) - c
	}

	fmt.Println(c)
}

