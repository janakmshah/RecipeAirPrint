
public struct RecipeAirPrint {
    
    public static func airPrint(name: String, description: String, ingredients: [String], method: [String], servings: String, calories: String, netCarbs: String, fat: String, protein: String) {
        
        let htmlString = """
        <!DOCTYPE html><html><body style="font-family:avenir; font-size:11px">
                <h3>\(name)</h3>
                <p>\(description)</p>
                <hr>
                <h3>Ingredients</h3>
                <ul>
                    <li>\(ingredients.joined(separator: "</li><li>"))</li>
                </ul>
                <hr>
                <h3>Instructions</h3>
                <ol>
                    <li>\(method.joined(separator: "</li><li>"))</li>
                </ol>
                <hr>
                <h3>Nutrition</h3>
                <p>Servings: \(servings)</br>
                    Calories: \(calories) per serving</br>
                    Net Carbs: \(netCarbs)g per serving</br>
                    Fat: \(fat)g per serving</br>
                    Protein: \(protein)g per serving
                </p>
        </body></html>
        """
        
        airPrint(htmlString)
    }
    
    static func airPrint(_ html: String) {
        let printController = UIPrintInteractionController.shared
        let printInfo = UIPrintInfo(dictionary:nil)
        printInfo.outputType = UIPrintInfoOutputType.general
        printInfo.jobName = "Recipe print job"
        printController.printInfo = printInfo
        let formatter = UIMarkupTextPrintFormatter(markupText: html)
        formatter.perPageContentInsets = UIEdgeInsets(top: 24, left: 30, bottom: 24, right: 30)
        printController.printFormatter = formatter
        printController.present(animated: true, completionHandler: nil)
    }
    
}
