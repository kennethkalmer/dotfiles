# For when the nix package manager is present
if [[ -d ~/.nix-profile ]]; then
  source ~/.nix-profile/etc/profile.d/nix.sh
fi
