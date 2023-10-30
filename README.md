# Installation 💻

To install MYC on your system, run the following command in your terminal:

```bash
  curl -fsSL https://raw.githubusercontent.com/the-pedropaulo/mycommit/main/scripts/install.sh | sh
```

This command will download and run the MYC installation script directly from the GitHub repository, configuring the tool in your environment.

🅰️ **ATTENTION:** Sometimes it will be necessary to restart the terminal so that the tool can be used.

### How to Use ❓

After successful installation, you can easily use the MYC in your Git repository. Just navigate to the project directory and use the following command to commit:

```bash
git add [archives]
myc
```

The MYC will guide you through the commit creation process, allowing you to select the category, add a message and optionally add a more detailed description. With MYC, you can maintain a consistent pattern for your commit messages, improving collaboration and understanding of project development.

### Uninstallation ❌

To uninstall MYC on your system, run the following command in your terminal:

```bash
curl -fsSL https://raw.githubusercontent.com/the-pedropaulo/mycommit/main/scripts/uninstall.sh | sh
```