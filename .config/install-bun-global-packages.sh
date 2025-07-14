while read -r package; do
  echo "Installing $package..."
  bun install -g "$package" || echo "Failed to install $package"
done < ~/.config/bun-global-packages
