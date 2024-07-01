package main

import (
	"fmt"
	"log"
	"sort"
)

func main() {

	const num = 5 //
	var time[num] int //
	var sum int
	var wait []int //array or slice

	//
	for i := 0; i < num; i++{
		_, err := fmt.Scan(&time[i])
		if err != nil {
			log.Fatal(err)
		}
	}

	//
	for i := 0; i < num; i++ {
		wait = append(wait, 0)

		if time[i] % 10 != 0{
			wait[i] = 10 - (time[i] % 10)
		}
	}

	//
	sort.Ints(wait)

	for i := 0; i < num; i++{

		//
		if i == num - 1{
			wait[i] = 0
		}

		sum = sum + time[i] + wait[i]
	}

	fmt.Println(sum)
}
