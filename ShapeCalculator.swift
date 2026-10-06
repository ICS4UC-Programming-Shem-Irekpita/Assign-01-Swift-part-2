// Import Foundation framework for core utility types and math functions
import Foundation

/// ShapeCalculator asks the user to select a shape and calculates its area.
/// - Author: Shem Irekpita
/// - Version: 1.0
/// - Date: 2026-10-04

// Prompt user to select a shape option without creating a new line
print("Choose a shape to calculate its area (Triangle, Trapezoid, Pentagon): ", terminator: "")

// Read optional input string from standard input
if let choice = readLine() {

    // Evaluate if user choice matches triangle
    if choice == "Triangle" || choice == "triangle" {
        // Print confirmation message for triangle selection
        print("You selected Triangle.")
        // Prompt user to enter base length without a trailing newline
        print("Enter base length: ", terminator: "")
        // Read base input string from standard input
        let baseInput = readLine()

        // Prompt user to enter height dimension without a trailing newline
        print("Enter height: ", terminator: "")
        // Read height input string from standard input
        let heightInput = readLine()

        // Parse base and height optional strings to double precision values
        if let baseInput = baseInput, let heightInput = heightInput, let base = Double(baseInput), let height = Double(heightInput) {
            // Validate that both base and height are strictly positive
            if base <= 0 || height <= 0 {
                // Display error message when dimensions are non-positive
                print("Please enter a positive input.")
            // Execute calculation branch when dimensions are valid positive values
            } else {
                // Compute triangle area using half base times height formula
                let area = 0.5 * base * height
                
                // Format and print shape area output
                if area == Double(Int(area)) {
                    print("Triangle Area: " + String(Int(area)))
                } else {
                    print(String(format: "Triangle Area: %.3f", area))
                }
            }
        // Branch to handle numerical parsing failures
        } else {
            // Display error message for invalid numerical input formatting
            print("Invalid number format. Please enter valid numeric values.")
        }

    // Evaluate if user choice matches trapezoid
    } else if choice == "Trapezoid" || choice == "trapezoid" {
        // Print confirmation message for trapezoid selection
        print("You selected Trapezoid.")
        // Prompt user to enter first base length without a trailing newline
        print("Enter base 1 length: ", terminator: "")
        // Read base 1 input string from standard input
        let baseInput1 = readLine()

        // Prompt user to enter second base length without a trailing newline
        print("Enter base 2 length: ", terminator: "")
        // Read base 2 input string from standard input
        let baseInput2 = readLine()

        // Prompt user to enter height dimension without a trailing newline
        print("Enter height: ", terminator: "")
        // Read height input string from standard input
        let heightInput = readLine()

        // Parse all three optional input strings to double precision values
        if let baseInput1 = baseInput1, let baseInput2 = baseInput2, let heightInput = heightInput, let base1 = Double(baseInput1), let base2 = Double(baseInput2), let height = Double(heightInput) {
            // Validate that all three trapezoid dimensions are strictly positive
            if base1 <= 0 || base2 <= 0 || height <= 0 {
                // Display error message when inputs are non-positive
                print("Please enter a positive input.")
            // Execute calculation branch when inputs are valid positive values
            } else {
                // Compute trapezoid area using average base times height formula
                let area = 0.5 * (base1 + base2) * height
                
                // Format and print shape area output
                if area == Double(Int(area)) {
                    print("Trapezoid Area: " + String(Int(area)))
                } else {
                    print(String(format: "Trapezoid Area: %.3f", area))
                }
            }
        // Branch to handle numerical parsing failures
        } else {
            // Display error message for invalid numerical input formatting
            print("Invalid number format. Please enter valid numeric values.")
        }

    // Evaluate if user choice matches pentagon
    } else if choice == "Pentagon" || choice == "pentagon" {
        // Print confirmation message for pentagon selection
        print("You selected Pentagon.")
        // Prompt user to enter side length without a trailing newline
        print("Enter side length: ", terminator: "")
        // Read side input string from standard input
        let sideInput = readLine()

        // Parse side length optional string to double precision value
        if let sideInput = sideInput, let side = Double(sideInput) {
            // Validate that side length is strictly positive
            if side <= 0 {
                // Display error message when side length is non-positive
                print("Please enter a positive input.")
            // Execute calculation branch when side length is valid positive value
            } else {
                // Compute pentagon area using formula factor times side squared
                let area = 0.25 * sqrt(5.0 * (5.0 + 2.0 * sqrt(5.0))) * pow(side, 2)
                
                // Format and print shape area output
                if area == Double(Int(area)) {
                    print("Pentagon Area: " + String(Int(area)))
                } else {
                    print(String(format: "Pentagon Area: %.3f", area))
                }
            }
        // Branch to handle numerical parsing failures
        } else {
            // Display error message for invalid numerical input formatting
            print("Invalid number format. Please enter valid numeric values.")
        }

    // Branch to handle unrecognized user shape menu choices
    } else {
        // Display error message for invalid shape choice selection
        print("Invalid selection.")
    }
}