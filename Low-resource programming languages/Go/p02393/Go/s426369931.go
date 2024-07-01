package main

import "fmt"

func swap(a, b int){
    return b, a
}

func main(){

    var a []int
    var in_n int

    
    for{
        fmt.Scanf("%d", &in_n) 
        if in_n != '\n' { break } 
        a = append(a, in_n)
    }

 
    for i:= 0; i < len(a) - 1; i++ {
        for j := i + 1 ; j < len(a) ; j++{
            a[i], a[j] = swap(a[i], a[j])
        }
    } 
    
    fmt.Println(a[0], a[1], a[2])


}
