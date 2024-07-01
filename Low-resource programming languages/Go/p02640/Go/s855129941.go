package main

import "fmt"

func main() {
	arr := make([]int, 2)
	for i := 0; i < 5; i++ {

		if _, err := fmt.Scan(&arr[i]); err != nil {
			panic(err)
		}
	}
       
      if arr[1] %8 == 0{
fmt.Println("Yes")
} else {
fmt.Print("No")}

	
}
