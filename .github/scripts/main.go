package main

import "os"
import "fmt"

func main() {
	cwd, _ := os.Getwd()
	dirs, _ := os.ReadDir(".")
	fmt.Println(cwd)
	for _, dir := range dirs {
		fmt.Println(dir)
	}
}
