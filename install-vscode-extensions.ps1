# Define the list of extensions
$pkglist = @(
    "ms-vsliveshare.vsliveshare",
    "reditorsupport.r"
)

# Loop through each extension and install it
foreach ($extension in $pkglist) {
    code --install-extension $extension
}