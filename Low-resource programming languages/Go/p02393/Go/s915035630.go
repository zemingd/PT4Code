package main

import "fmt"

func main(){

    var a []int
    var in_n int

    
    for{
        fmt.Scanf("%d", &in_n) 
        if in_n != '\n' { break } 
        a = append(a, in_n)
    }

    var temp int
    for i:= 0; i < len(a) - 1; i++ {
        for j := i + 1 ; j < len(a) ; j++{
            if a[i] > a[j]{
            temp = a[i]
            a[i] = a[j]
            a[j] = a[i]    
            }
        }
    } 
    
    fmt.Println(a[0], a[1], a[2])


}
