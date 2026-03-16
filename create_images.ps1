Add-Type -AssemblyName System.Drawing

function Create-ProductImage {
    param($filename, $text, $color)
    
    $bmp = New-Object System.Drawing.Bitmap(400,300)
    $g = [System.Drawing.Graphics]::FromImage($bmp)
    $g.Clear([System.Drawing.Color]::FromArgb($color))
    
    $font = New-Object System.Drawing.Font('Arial',28,[System.Drawing.FontStyle]::Bold)
    $brush = [System.Drawing.Brushes]::White
    $sf = New-Object System.Drawing.StringFormat
    $sf.Alignment = [System.Drawing.StringAlignment]::Center
    $sf.LineAlignment = [System.Drawing.StringAlignment]::Center
    $rect = New-Object System.Drawing.RectangleF(0,0,400,300)
    $g.DrawString($text,$font,$brush,$rect,$sf)
    
    $bmp.Save($filename,[System.Drawing.Imaging.ImageFormat]::Jpeg)
    $g.Dispose()
    $bmp.Dispose()
}

$imagesPath = "c:\Users\anjal\OneDrive\Desktop\E-COMMERCE\images\"

Create-ProductImage "$imagesPath\headphones.jpg" "Headphones" "102,126,234"
Create-ProductImage "$imagesPath\smartwatch.jpg" "Smart Watch" "118,75,162"
Create-ProductImage "$imagesPath\shoes.jpg" "Running Shoes" "72,187,120"
Create-ProductImage "$imagesPath\tshirt.jpg" "T-Shirt" "237,137,54"
Create-ProductImage "$imagesPath\coffeemaker.jpg" "Coffee Maker" "159,122,234"
Create-ProductImage "$imagesPath\laptop.jpg" "Laptop" "45,55,72"
Create-ProductImage "$imagesPath\yogamat.jpg" "Yoga Mat" "56,178,172"
Create-ProductImage "$imagesPath\jacket.jpg" "Denim Jacket" "74,85,104"
Create-ProductImage "$imagesPath\mouse.jpg" "Gaming Mouse" "229,62,62"
Create-ProductImage "$imagesPath\speaker.jpg" "Bluetooth Speaker" "49,130,206"
Create-ProductImage "$imagesPath\fitness.jpg" "Fitness Tracker" "56,161,105"
Create-ProductImage "$imagesPath\backpack.jpg" "Backpack" "221,107,32"
Create-ProductImage "$imagesPath\tennis.jpg" "Tennis Racket" "128,90,213"
Create-ProductImage "$imagesPath\lamp.jpg" "Desk Lamp" "44,122,123"

Write-Host "All product images created successfully!"
