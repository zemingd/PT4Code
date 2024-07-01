package main

import "fmt"

func main(){
     var x, y int
     fmt.Scan(&x, &y)

     buf := 3 * x + y
     ans := buf / 2

     fmt.Println(ans)
}