import Foundation

/// ShapeCalculator asks the user to select a shape and calculates its area.
///
/// - Author: Shem Irekpita
/// - Version: 1.0
/// - Date: 2026-10-04
enum ShapeCalculator {

    /// Helper method to format and display the calculated area.
    ///
    /// - Parameters:
    ///   - shapeName: The name of the shape
    ///   - area: The calculated area
    private static func printArea(_ shapeName: String, _ area: Double) {
        if area.truncatingRemainder(dividingBy: 1) == 0 {
            print("\(shapeName) Area: \(Int64(area))")
        } else {
            print(String(format: "%@ Area: %.3f", shapeName, area))
        }
    }

    /// Main entry point for the application.
    static func main() {
        // Ask the user to choose a shape
        print("Choose a shape to calculate its area (Triangle, Trapezoid, Pentagon): ", terminator: "")
        guard let choice = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) else {
            return
        }

        // If user picked triangle
        if choice.lowercased() == "triangle" {
            print("You selected Triangle.")
            print("Enter base length: ", terminator: "")
            let baseInput = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""

            print("Enter height: ", terminator: "")
            let heightInput = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""

            if let base = Double(baseInput), let height = Double(heightInput) {
                if base <= 0 || height <= 0 {
                    print("Please enter a positive input.")
                } else {
                    let area = 0.5 * base * height
                    printArea("Triangle", area)
                }
            } else {
                print("Invalid number format. Please enter valid numeric values.")
            }

        // If user picked trapezoid
        } else if choice.lowercased() == "trapezoid" {
            print("You selected Trapezoid.")
            print("Enter base 1 length: ", terminator: "")
            let baseInput1 = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""

            print("Enter base 2 length: ", terminator: "")
            let baseInput2 = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""

            print("Enter height: ", terminator: "")
            let heightInput = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""

            if let base1 = Double(baseInput1), let base2 = Double(baseInput2), let height = Double(heightInput) {
                if base1 <= 0 || base2 <= 0 || height <= 0 {
                    print("Please enter a positive input.")
                } else {
                    let area = 0.5 * (base1 + base2) * height
                    printArea("Trapezoid", area)
                }
            } else {
                print("Invalid number format. Please enter valid numeric values.")
            }

        // If user picked pentagon
        } else if choice.lowercased() == "pentagon" {
            print("You selected Pentagon.")
            print("Enter side length: ", terminator: "")
            let sideInput = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""

            if let side = Double(sideInput) {
                if side <= 0 {
                    print("Please enter a positive input.")
                } else {
                    let pentagonFactor = 0.25 * sqrt(5.0 * (5.0 + 2.0 * sqrt(5.0)))
                    let area = pentagonFactor * pow(side, 2)
                    printArea("Pentagon", area)
                }
            } else {
                print("Invalid number format. Please enter valid numeric values.")
            }

        // Invalid shape choice
        } else {
            print("Invalid selection.")
        }
    }
}

ShapeCalculator.main()