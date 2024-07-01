package main

import (
	"fmt"
	"log"
	"strconv"
)

// 09, 18, 27, 36, 45, ... 90, 99, 108
func main() {
	var num string
	if _, err := fmt.Scan(&num); err != nil {
		log.Fatal(err)
	}

	var sum int
	for _, ch := range num {
		n, err := strconv.Atoi(string(ch))
		if err != nil {
			log.Fatal(err)
		}

		sum += n
	}

	if sum%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
