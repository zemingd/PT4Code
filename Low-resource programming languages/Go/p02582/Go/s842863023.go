package main
import "fmt"
func main(){
    // Your code here!
    
    var w string
    fmt.Scan(&w)
    
    if (w == "RRS") {
        println(2)
    } else if (w =="SRR") {
        println(2)
    } else if (w == "RSR") {
        println(1)
    } else if (w =="SRS") {
        println(1)
    } else if (w == "RRR") {
        println(3)
    } else {
        println(0)
    }
}
