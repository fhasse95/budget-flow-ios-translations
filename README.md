<h1> Budget Flow - Translations
  <img align="right" alt="Project logo" src="./Icon_Rounded.png" width="128px">
</h1>
<p>
  Translations for Budget Flow - An expense tracking app for iPhone, iPad, Mac and Apple Watch.
</p>

[![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-red.svg)](https://github.com/fhasse95/budget-flow-ios-translations/pulls)
[![Xcode 15.0+](https://img.shields.io/badge/Xcode-15.0%20%2B-147EFB)](https://developer.apple.com/xcode)

## Introduction
Currently, Budget Flow supports over 30 languages. However, since the app has been automatically translated into many of them, there can sometimes be errors, which is why the translation may not always be perfect for certain languages.

Thanks to the incredible support of many kind users, several people have already contributed to translating the app, and I am truly grateful for their help. You can find a list of all users who have assisted with the translation in the "Acknowledgments" section of the app.

If your language is not yet supported or if you notice any translation errors, I would greatly appreciate hearing from you. To do so, you can either send me a message via email at mail@budget-flow.app or contact me directly within the app under "Help with Translation" in the settings. In addition, the latest versions of the translations are now available directly within this open-source repository. If you would like to contribute, please feel free to do so!

## Contribute
The following steps are necessary to participate in the translation process:

### 1) Clone the repository
```console
# Clone the repository
git clone https://github.com/fhasse95/budget-flow-ios-translations.git

# Navigate into the project directory
cd budget-flow-ios-translations

# Create a new branch for your changes
git checkout -b <branch-name>
```

> [!NOTE]
> Make sure [Git](https://git-scm.com/downloads) is installed on your system before running these commands.

### 2) Adjust the translations

To translate the entries, simply change the **values** of each key (e.g. `"account_type_payment" = "<VALUE>";`).

**Do not translate:**
- The `"app_name"` since "Budget Flow" remains the same in every locale.
- Specific terms like `"Face ID"` / `"Touch ID"` – these should stay unchanged.
- Entries under `/* Contact Developer */` – those should remain in English so I can understand support requests.


### 3) Commit and push your changes
```console
# Commit and push your changes
git commit -m "Updated translations"
git push origin <your-branch-name>
```

### 4) Open a Pull Request
- Go to the repository on GitHub.
- You’ll see a prompt to open a Pull Request (PR) from your recently pushed branch.
- Give your PR a descriptive title and a short summary of what you changed.
- Submit the PR against the main branch.

When you're done with the translation, just let me know so I can add the changes in the next update. I can also mention you under the acknowledgements if you want (either with your full name or just the first name).

Thanks for participating! 😊