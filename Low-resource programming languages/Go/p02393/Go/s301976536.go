package main

import "fmt"
import "strings"

func swap(a, b int)(int, int){
    return b, a 
}

func main(){

    var a []int
    var in_s string

    fmt.Scanln(&in_s)

    a = int(strings.Fileds(in_s))

 
    for i:= 0; i < len(a) - 1; i++ {
        for j := i + 1 ; j < len(a) ; j++{
            a[i], a[j] = swap(a[i], a[j])
        }
    } 
    
    fmt.Println(a[0], a[1], a[2])


}
