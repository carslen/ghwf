package main

import "os"
import "fmt"

func main() {
	fmt.Println(os.Getwd())
	fmt.Println(os.ReadDir("."))
}
