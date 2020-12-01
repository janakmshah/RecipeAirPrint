
public struct RecipeAirPrint {
    
    public static func airPrint(_ html: String) {
        let printController = UIPrintInteractionController.shared
        let printInfo = UIPrintInfo(dictionary:nil)
        printInfo.outputType = UIPrintInfoOutputType.general
        printInfo.jobName = "Recipe print job"
        printController.printInfo = printInfo
        let formatter = UIMarkupTextPrintFormatter(markupText: html)
        formatter.perPageContentInsets = UIEdgeInsets(top: 72, left: 72, bottom: 72, right: 72)
        printController.printFormatter = formatter
        printController.present(animated: true, completionHandler: nil)
    }
    
}
