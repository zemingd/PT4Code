package main

import (
	"fmt"
)

func main() {
	var str string
	fmt.Scan(&str)

	var fin bool
	var ok bool
	for !fin {
		if len(str) < 5 {
			ok = len(str) == 0
			fin = true
			break
		}

		switch {
		case len(str) >= 11 && str[:11] == "dreameraser":
			str = str[11:]
		case len(str) >= 10 && str[:10] == "dreamerase":
			str = str[10:]
		case len(str) >= 5 && str[:5] == "dream":
			str = str[5:]
		case len(str) >= 7 && str[:7] == "dreamer":
			str = str[7:]
		case len(str) >= 5 && str[:5] == "erase":
			str = str[5:]
		case len(str) >= 6 && str[:6] == "eraser":
			str = str[6:]
		default:
			ok = false
			fin = true
			break
		}

	}

	if ok {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
