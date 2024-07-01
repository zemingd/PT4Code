package main

import (
    "fmt"
)

func main() {
    arr :=[3]uint32{}
    fmt.Scan(&arr[0], &arr[1])

	if arr[0]<=arr[1] {
		fmt.Println(arr[0])
	} else {
		fmt.Println(arr[0]-1)
	}
	return
}