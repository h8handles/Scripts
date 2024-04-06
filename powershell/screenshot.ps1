#Define the path where you want to save the screenshot
$screenshotPath = "path/to/save/location" #CHANGE ME

#Add assembly to access System.Drawing namespace
Add-Type -AssemblyName System.Drawing

#Create a bitmap of the screen size
$screenshot = New-Object System.Drawing.Bitmap([System.Windows.Forms.SystemInformation]::VirtualScreen.Width, [System.Windows.Forms.SystemInformation]::VirtualScreen.Height)

#Create a graphics object from the bitmap
$graphics = [System.Drawing.Graphics]::FromImage($screenshot)

#Capture the screen
$graphics.CopyFromScreen([System.Drawing.Point]::Empty, [System.Drawing.Point]::Empty, $screenshot.Size)

#Save the screenshot to the specified path
$screenshot.Save($screenshotPath)

#Dispose of the graphics object
$graphics.Dispose()

Write-Host "Screenshot saved to: $screenshotPath"
