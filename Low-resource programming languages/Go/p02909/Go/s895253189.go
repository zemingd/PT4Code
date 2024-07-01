package main
 
import (
        "errors"
        "fmt"    
)
 
func weatherPrediction(today string) string {
        switch {    
        case today == "Sunny":
                return "Cloudy"
        case today == "Cloudy":
                return "Rainy"
        case today == "Rainy":
                return "Sunny"
        default:
                panic(errors.New("No solution"))
        }
}
 
func main() {
        var weather string
        fmt.Scan(&weather)
        fmt.Println(weatherPrediction(weather))
}