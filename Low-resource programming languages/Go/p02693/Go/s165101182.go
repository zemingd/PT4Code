package main

import (
	"fmt"
	"log"
)

func main() {
	var X int64
  _, err := fmt.Scanf("%d", &X)
  var hund int64
  hund = 100
  counter :=0
  for (hund < X ){
    
    hund += int64(float64(hund)*.01)
    counter++
  }
  fmt.Println(counter)

	if err !=nil{
		log.Fatal(err)
  }
}
