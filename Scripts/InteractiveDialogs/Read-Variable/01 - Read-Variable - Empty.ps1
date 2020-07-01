# Set up properties for the dialog window
$props = @{
    Title = "Example Window"
    Description = "Lorem ipsum dolor sit amet."
    OkButtonName = "Submit"
    CancelButtonName = "Cancel"
    Width = 500
    Height = 600
    Parameters = @(
        # You can add parameters here to define inputs/labels/controls for the form
    )
}

# Displays the dialog window
$result = Read-Variable @props

# Exit if anything other than the OkButton is clicked
if ($result -ne "ok") {
    Close-Window
    Exit
}