package main
import "fmt"

func main(){
	var time,sec,min,hour int
	fmt.Scan(&time)
	sec = time % 60
	time /= 60
	min = time % 60
	time /= 60
	hour = time
	fmt.Printf("%d:%d:%d\n",hour,min,sec)
	
}

