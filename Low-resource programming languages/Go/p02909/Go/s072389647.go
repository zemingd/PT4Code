import "fmt"

func main() {
	var weather string
	fmt.Scanf("%s", &weather)
	if(weather == "Sunny") {
		fmt.Println("Cloudy")
	} else if (weather == "Cloudy") {
		fmt.Println("Rainy")
	} else {
		fmt.Println("Sunny")
	}
}