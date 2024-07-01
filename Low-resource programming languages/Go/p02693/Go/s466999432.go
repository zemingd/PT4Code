package main

import (
	"fmt"
	"log"
)

func main() {
	//fmt.Print("Enter a grade: ")
	var K,i,j int // or grade := 0
	_, err := fmt.Scanf("%d", &K) // or %f and change grade to float64
  _, err2 := fmt.Scanf("%d", &i) // or %f and change grade to float64
  _, err3 :=fmt.Scanf("%d", &j)

	if err != nil || err2 !=nil|| err3 !=nil{
		log.Fatal(err)
	}
	/*fmt.Printf("A grade of %d%% is", K)
  fmt.Println()
  fmt.Printf("A grade of %d%% is", i)
  fmt.Println()
  fmt.Printf("A grade of %d%% is", j)*/

	if K >= i && K<=j {
		fmt.Println("OK")
	} else if K <i && K*2>j{
		fmt.Println("NG")
	}else if K <i && K*2>j{
		fmt.Println("NG")
	}else{
    for x:=i; x<j; x++{
      if x%K==0 {
        fmt.Println("OK")
        break
      }else if x==j{
        fmt.Println("NG")
      }
      
    }
  }
}